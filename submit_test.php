<?php
use PHPUnit\Framework\TestCase;

class SubmitTest extends TestCase {
    public function testSubmitForm() {
        $_POST["name"] = "Test Name";
        $_POST["email"] = "test@example.com";

        include 'submit.php';

        // Assert that data is submitted successfully
        $this->expectOutputString('Data submitted successfully!');
    }

    // Add more test cases as needed...
}
