
puts "Seeding starting"
#create users
User.destroy_all
user1=User.create(name:"esther",email:"esther@gmail.com",password:"1234")
user2=User.create(name:"ayubu",email:"ayubu56@gmail.com",password:"ABCD")

#create hubs
Hub.destroy_all
hub1=Hub.create(
  name:"BEI HUB",
  image:"https://i.ibb.co/MCXZj3R/bei-hub.jpg",
  location:"TUM",
  website_url:"https://www.beihub.co.ke/",
  description:"To provide a state of the art platform for Social Innovation in the Blue Economy, using Human Centered Design Principles and Triple Helix Approach.
",
founder:"Dr.Mathew M. Egessa"
)
hub2=Hub.create(
  name:"SWAHILIPOT HUB",
  image:"https://i.ibb.co/gR0QgYX/swahilipot.jpg",
  location:"Mombasa Governor Office",
  website_url:"https://www.swahilipothub.co.ke/",
  description:"Swahilipot Hub Foundation was started in 2016 with the aim of becoming a global pacesetter in stimulating and reinvesting positive growth by creating an appropriate environment for youth on the Kenyan coast to build sustainable solutions of the highest calibre around challenges in the community",
  founder:"Mahmoud Noor"
)
hub3=Hub.create(
  name: "CLOSE THE GAP",
  image:"https://i.ibb.co/Khc1Bnj/closegap.jpg",
  location:"Ratna Square",
  website_url: "https://www.close-the-gap.org/",
  description: "Close the Gap CVBA's aim is to make impact on a global level by investing in local technology and solutions.",
  founder:"Vanden Eynde"

)
hub4=Hub.create(
  name: "TECHBRIDGE INVEST",
  image: "https://i.ibb.co/vkwJPpF/techbridge.jpg",
  location:"City Mall",
  website_url:"https://www.techbridgeinvest.com/",
  description: "TechBridge Invest aims to give entrepreneurship-training and invest in areas where we can have the greatest impact
",
  founder:"Brad Anderson"

)
hub5=Hub.create(
  name: "ELDO HUB",
  image: "https://i.ibb.co/z2XpxC0/eldo-hub.jpg",
  location:"Kiptagich House",
  website_url:"https://www.eldohub.co.ke/",
  description: "We are an innovation centre dedicated to accelerating the application of social capital and technology for economic prosperity
",
  founder:"Erik Hersman"
)
hub6=Hub.create(
  name: "SOTE HUB",
  image: "https://i.ibb.co/z2XpxC0/eldo-hub.jpg",
  location:"Bella Rosa House",
  website_url:"https://sotehub.com/"
  description: "Sote Hub provides support in developing a solid business and action plan for implementing the innovation in Burkina Faso and in establishing the needed networks
",
  founder:"Jakub Šimek"
)
hub7=Hub.create(
  name: "iHUB",
  image: "https://i.ibb.co/rdThD5z/ihub.jpg",
  location:"Senteu Plaza",
  website_url:"https://ihub.co.ke/"
  description: "We are an innovation centre dedicated to accelerating the application of social capital and technology for economic prosperity",
  founder:"Erik Hersman"
)
hub8=Hub.create(
  name: "NAILAB",
  image: "https://i.ibb.co/vJfrCKy/nailab.jpg",
  location:"Bishop Magua Centre",
  website_url:"https://nailab.co/"
  description:"Nailab tries to lower the entry barriers for ICT entrepreneurs who want to start and scale their businesses in Kenya
",
  founder:"Tonee Ndungu"
)
#create reviews
Review.destroy_all
review1=Review.create(hub_id:hub1.id,user_id:user2.id,comment:"Help me to network")

puts "seeding ending"

