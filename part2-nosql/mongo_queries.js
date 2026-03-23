// insert all 3 documents
db.products.insertMany([
  {
    product_id: "E001",
    name: "Smartphone X",
    category: "Electronics",
    price: 25000,
    brand: "Samsung",
    warranty_years: 2,
    specifications: {
      voltage: "220V",
      battery: "5000mAh",
      storage: "128GB"
    }
  },
  {
    product_id: "C001",
    name: "Men's T-Shirt",
    category: "Clothing",
    price: 999,
    brand: "Nike",
    size_options: ["S", "M", "L", "XL"],
    material: "Cotton",
    colors: ["Red", "Black", "White"]
  },
  {
    product_id: "G001",
    name: "Organic Milk",
    category: "Groceries",
    price: 60,
    expiry_date: "2024-12-30",
    nutrition: {
      calories: 150,
      protein: "8g",
      fat: "5g"
    },
    is_perishable: true
  }
]);


//  find Electronics with price > 20000
db.products.find({
  category: "Electronics",
  price: { $gt: 20000 }
});


//  find Groceries expiring before 2025-01-01
db.products.find({
  category: "Groceries",
  expiry_date: { $lt: "2025-01-01" }
});


//  updateOne — add discount_percent
db.products.updateOne(
  { product_id: "E001" },
  { $set: { discount_percent: 10 } }
);


//  createIndex — index on category
db.products.createIndex({ category: 1 });

// Reason:
// This index improves query performance when filtering products by category,
// especially for large datasets.