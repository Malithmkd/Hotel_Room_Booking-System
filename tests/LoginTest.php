<?php

use PHPUnit\Framework\TestCase;

class LoginTest extends TestCase
{
    private $mockConn;

    protected function setUp(): void
    {
        // Create a mock PDO connection
        $this->mockConn = $this->createMock(\PDO::class);
    }

    public function testSuccessfulLogin()
    {
        // Mock database query to return a valid user
        $mockStatement = $this->createMock(\PDOStatement::class);
        $mockStatement->expects($this->once())
                      ->method('fetch')
                      ->willReturn(['mypassword' => password_hash('password', PASSWORD_DEFAULT)]);

        $this->mockConn->expects($this->once())
                       ->method('query')
                       ->willReturn($mockStatement);

        // Simulate POST data
        $_POST['email'] = 'malith.kavidu.314@gmail.com';
        $_POST['password'] = '12312311';


       // Call the login logic (assuming it's in a separate function)
        $result = login($this->mockConn);

        // Assert that session variables are set correctly
        $this->assertArrayHasKey('username', $_SESSION);
        $this->assertArrayHasKey('id', $_SESSION);

       
    }

    // Test for invalid credentials
    public function testInvalidCredentials()
    {
        // Mock database query to return no user
        $mockStatement = $this->createMock(\PDOStatement::class);
        $mockStatement->expects($this->once())
                      ->method('fetch')
                      ->willReturn(false); // No user found

        $this->mockConn->expects($this->once())
                       ->method('query')
                       ->willReturn($mockStatement);

        // Simulate POST data
        $_POST['email'] = 'invalid_email@example.com';
        $_POST['password'] = 'wrong_password';

        // Call the login logic
        $result = login($this->mockConn);

        // Assert that session variables are NOT set
        $this->assertArrayNotHasKey('username', $_SESSION);
        $this->assertArrayNotHasKey('id', $_SESSION);

        // Assert additional behavior for invalid login (e.g., error message)
        // ... (Add assertions based on your implementation)
    }
}

?>

