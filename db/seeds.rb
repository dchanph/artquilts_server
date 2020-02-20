# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Craft.create([
    {pdtImg:'https://www.deradesigninc.com/products/100-organic-cotton-quilted-changing-pad-starlight-pink', pdtName:'Organic Bag', pdtCategory: 'Bag', pdtPrice: 50},
    {pdtImg:'https://waywardcollective.com/products/filson-mens-ccf-quilted-utility-jacket_black', pdtName:'Quilted Outercoat', pdtCategory: 'Jacket', pdtPrice: 100},
])

Kit.create([
    {kitImg:'https://stock.adobe.com/sg/images/quilt-and-quilting-thread/43586764?as_channel=affiliate&as_campaign=pexels&as_source=arvato&tduid=24bddcada6f76402a90d677b61385233&as_channel=affiliate&as_campclass=redirect&as_source=arvato', kitName: 'Sewing Tools', kitCategory: 'Tools', kitDetails:'1 x cutting, 1 x Rotary Cutter, Wonder Clips', kitCost: 60},
    {kitImg:'https://stock.adobe.com/sg/images/autumn-patchwork-quilt-background/92047636?as_channel=affiliate&as_campaign=pexels&as_source=arvato&tduid=24bddcada6f76402a90d677b61385233&as_channel=affiliate&as_campclass=redirect&as_source=arvato', kitName: 'Patchworks', kitCategory: 'Fabrics', kitDetails:'25 x patchworks', kitCost: 40}
])