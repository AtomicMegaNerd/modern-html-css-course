<details>
  <summary>Click For Solution</summary>

```html
<header>
  <h1>Apartment Search</h1>
</header>
<form action="submit.php" method="post">
  <label for="location">Location:</label>
  <input type="text" id="location" name="location" required /><br /><br />

  <label for="priceRange">Price Range:</label>
  <input
    type="range"
    id="priceRange"
    name="priceRange"
    min="0"
    max="5000"
    step="100"
    value="1000"
  /><br /><br />

  <label for="numBedrooms">Number of Bedrooms:</label>
  <input
    type="number"
    id="numBedrooms"
    name="numBedrooms"
    min="0"
    max="10"
    value="1"
    required
  /><br /><br />

  <label for="numBathrooms">Number of Bathrooms:</label>
  <input
    type="number"
    id="numBathrooms"
    name="numBathrooms"
    min="0"
    max="10"
    value="1"
    required
  /><br /><br />

  <label for="petsAllowed">Pets Allowed:</label>
  <input type="checkbox" id="petsAllowed" name="petsAllowed" /><br /><br />

  <label for="dateAvailable">Date Available:</label>
  <input
    type="date"
    id="dateAvailable"
    name="dateAvailable"
    required
  /><br /><br />

  <input type="submit" value="Submit" />
</form>
```

</details>
