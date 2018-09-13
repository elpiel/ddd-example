<?php
namespace Domain\Company;

class Company
{
    public function __construct(string $companyName, string $owner)
    {
        if (strlen($companyName) < 5) {
//            \InvalidArgumentException::
        }
    }
}