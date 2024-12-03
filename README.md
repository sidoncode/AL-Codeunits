
# CodeUnit - Batch Processing ->


# Simple Batch Processing Example - Business Central

A simple AL extension that demonstrates batch processing in Business Central by updating customer credit limits.

## Features

- Automatically sets credit limits for customers with no limit
- Simple one-click process
- Shows count of updated records
- Includes confirmation dialog

## Objects

- Codeunit 50150 "Simple Batch Process"
- Page 50150 "Credit Limit Update"

## How to Use

1. Search for "Update Customer Credit Limits" in Business Central
2. Click "Update Credit Limits" button
3. Confirm the action
4. View results message

## Business Logic

- Finds customers with Credit Limit (LCY) = 0
- Sets their credit limit to 5000
- Tracks number of updates made

  <br>


# CodeUnit - Modificaton / of Existing data  ->

# Simple Discount Calculator - Business Central Extension

A straightforward Business Central extension that calculates discounts based on quantity purchased. This extension demonstrates basic discount calculation functionality with a simple user interface.

## Features

### Discount Rules
- 10% discount for quantity >= 100
- 5% discount for quantity >= 50
- 2% discount for quantity >= 20

### Components
- Codeunit: Simple discount calculation logic
- Page: User interface for discount calculations
  

