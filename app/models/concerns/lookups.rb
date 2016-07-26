module Lookups
  extend ActiveSupport::Concern

  module ClassMethods
    def allocation
      %w( DoA LSU ATC Burman Discard Field )
    end

    def period
      ["Neolithic", "Chalcolithic", "Bronze Age", "Early Bronze", "Early Bronze 1", "Early Bronze 2", "Early Bronze 3", "Early Bronze 4", "Middle Bronze", "Middle Bronze 2", "MB2 through LB", "MB2/LB", "Late Bronze", "Late Bronze 1", "Late Bronze 2", "LB to Iron 1", "LB-Iron 1 Trans", "Iron", "Early Iron 1", "Iron 1", "Late Iron 1", "Late Iron 1Trans", "Early Iron 2", "Iron 2", "Late Iron 2", "Late Iron 2/Persian", "Persian", "Pre-Classical", "Persian to Hellenistic", "Classical", "Hellenistic", "Early Hellenistic", "Late Hellenistic", "Hel/Rom", "Roman", "Early Roman", "Late Roman", "Roman through Byzantine", "Roman/Byzantine", "Byzantine", "Early Byzantine", "Late Byzantine", "Byz/Early Islamic", "Islamic", "Early Islamic", "Umayyad", "Abbasid", "Fatimid", "Crusader", "Middle Islamic", "Ayyubid/Mamluk", "Mamluk", "Late Islamic", "Turkish", "Modern", "Undetermined"]
    end

    def modifiers
      ["4-footed", "Ammonite", "Anthropomorphic", "Antler", "Arab", "Arm", "Astragalus", "Base", "Basin", "Battered", "Bent", "Beveled", "Blade", "Blank", "Body", "Bottle", "Bovine", "Bow", "Bread", "Broken", "Building", "Bull", "Burned", "Burnished", "Carved", "Cattle", "Chipped", "Clasp", "Colored", "Concave", "Convex", "Cooking pot", "Corroded", "Cosmetic", "Counter sunk", "Cowry", "Cult", "Cuneiform", "Cut", "Cylinder", "Decomposing", "Dense", "Dipper", "Door", "Drilled", "Drilled countersink", "Equine", "Eroded", "Expedient reuse", "Eye-shaped", "Face", "Facing", "Female", "Fenestrated", "Fibula", "Figurine", "Flake", "Flat", "Floor", "Fluted", "Folded", "Foot", "Footed", "Foreign", "Garment", "Grooved", "Ground", "Hafted", "Hair", "Hand", "Handle", "Head", "Heavy", "Hellenistic", "Hollow", "Horse", "Huge", "Imported", "Impression", "Incense", "Incised", "Inscribed", "Islamic", "Ivory", "Jar", "Jar handle", "Jug", "Juglet", "Knob", "Krater", "Lamp", "Large", "Leg", "Link", "Long", "Loom", "Lotusseed", "Lower", "Lump", "Male", "Medium", "Melon", "Mended", "Miniature", "Modern", "Molded", "Multifaceted", "Multifacial", "Natural", "Nearly", "Neck", "Nose", "Notched", "Ornament", "Oxidized", "Pair", "Palmette", "Partial", "Partially perf", "Pebble", "Pendant", "Perforated", "Pierced", "Pillar", "Pillar base", "Pin", "Pithos", "Plaque", "Plate", "Point", "Polished", "Post-firing", "Potter's", "Pre-firing", "Pre-form", "Punctured", "Ram", "Red limestone", "Reed", "Repair", "Repaired", "Reused", "Reworked", "Rim", "Roof", "Rotary", "Rounded", "Rubbing", "Saddle", "Sandstone", "Saw", "Scaraboid", "Seal", "Shaft", "Shallow", "Shoulder", "Sickle", "Small", "Smooth", "Smoothed", "Spacer", "Spiral", "Spout", "Spring", "Squared", "Stamp", "Stamped", "Stand", "Statue", "Strap handle", "Strategic use", "Striated", "Sulfurous", "Tapered", "Tent", "Thick", "Thin", "Tiny", "Toggle", "Torso", "Toy", "Trilobate", "Tripod", "Tube", "Twisted", "UD", "Unfinished", "Unfired", "Unifacial", "Unknown", "Upper", "Vesicular", "Vessel", "Vitrified", "Waisted", "Wall", "Weathered", "Weaving", "Wheel thrown", "Worked", "Worn", "Zoomorphic"]
    end

    def percent
      ["10", "20", "30", "40", "50", "60", "70", "80", "90", "100", "UD", "Unknown"]
    end

    def designation
      ["Abrader", "Alabastron", "Altar", "Amphora", "Amphoriskos", "Amulet", "Antler", "Applicator", "Applique", "Architectural element", "Arrow", "Arrow head", "Arrow shaft", "Arrowhead", "Artifact", "Astragalus", "Attachment", "Awl", "Ax", "Axhead", "Ball", "Ballistic missile", "Band", "Bangle", "Bar", "Base", "Basin", "Basket", "Bead", "Bean", "Bell", "Belt", "Blade", "Blank", "Bodkin", "Bone", "Bottle", "Bowl", "Box", "Bracelet", "Brick", "Buckle", "Bull", "Bulla", "Bullet", "Burnishing tool", "Button", "Canaanean knife", "Capital", "Capstone", "Castanet", "Ceramic object", "Chain link", "Chalice", "Clamp", "Clasp", "Cleat", "Clip", "Cloth", "Coin", "Column", "Column base", "Comb", "Cooking pot", "Coral", "Cover", "Crucible", "Crusher frame", "Cup", "Cylinder", "Cymbal", "Dagger", "Dagger blade", "Dagger hilt", "Die", "Disk", "Door socket", "Drill", "Earring", "Eye", "Eyelet", "Fastener", "Fecula", "Felucca", "Fibula", "Figurine", "Figurine mold", "Fineware", "Finial", "Fish hook", "Flask", "Flint", "Fossil", "Fragment", "Fresco", "Frieze", "Funnel", "Game board", "Gaming piece", "Goblet", "Grinder", "Grinding stone", "Hammer", "Hammerstone", "Hand grinder", "Hand stone", "Handle", "Head rest", "Hinge", "Hoe", "Hole", "Hook", "Idol", "Impression", "Incense", "Incense burner", "Ingot", "Inlay", "Inscription", "Ivory", "Jar", "Javelin", "Jewelry", "Jug", "Juglet", "Key", "Knife", "Kohl", "Kohl stick", "Kohl tube", "Krater", "Ladle", "Lamp", "Lance", "Lantern", "Lid", "Lock", "loom weight", "Loomweight", "Mace", "Mallet", "Manuport", "Manuscript", "Marble", "Maul", "Medallion", "Mending bob", "Metal", "Microlith", "Milling stone", "Millling stone", "Milllling stone", "millstone", "Mirror", "Model", "Model shrine", "Mold", "Molding", "Mortar", "Mortarium", "Morter", "Mosaic", "Mug", "Muller", "Mummified object", "Musket ball", "Nail", "Necklace", "Needle", "Nodule", "Object", "Obsidian", "Ornament", "Ostracon", "Other", "Owner's mark", "Palette", "Papyrus", "Pebble", "Peg", "Pendant", "Perfume holder", "Pestle", "Pick", "Piece", "Pin", "Pithos", "Plaque", "Plaster", "Plate", "Platter", "Plow", "Podium", "Point", "Pole", "Polishing stone", "Pot", "Potter's mark", "Potter's wheel", "Pouch", "Pounder", "Press", "Pumice", "Pyxis", "Quern", "Rattle", "Razor", "Rhyton", "Rim", "Ring", "Rod", "Roller", "Sandal", "Sandstone Artifact", "Scarab", "Scraper", "Seal", "Seal impression", "Seed", "Shaft", "Shell", "Sherd", "Shovel", "Sickle", "Sieve", "Slab", "Slag", "Sling", "Slingstone", "Socket", "Spatula", "Spear", "Spike", "Spindle", "Spindle rest", "Spindle Shaft", "Spindle whorl", "Spool", "Spoon", "Stamp", "Stand", "Statue", "Stone", "Stopper", "Stoppers", "stoppwe", "Store jar", "Strainer", "Striker", "Surgical instrument", "Sword", "Tablet", "Tack", "Tent", "Tessera", "Tile", "Tool", "Tooth", "Toy", "Turnette", "UD", "Unguentarium", "Vase", "Vessel", "Vial", "Wall corner", "Weight", "Wheel", "Whetstone", "Whirligig", "Wire"]
    end

    def material
      ["Agate", "Alabaster", "Amber", "Amethyst", "Basalt", "Bone", "Bronze", "Carnelian", "Ceramic", "Chalk", "Chert", "Clay", "Copper", "Coral", "Diorite", "Dolomite", "Earth", "Enamel", "Faience", "Flint", "Frit", "Glass", "Gold", "Granite", "Hematite", "Horn", "Iron", "Ivory", "Jasper", "Lapis lazuli", "Lead", "Limestone", "Limonite", "Marble", "Metal", "Mother-of-Pearl", "Mud", "Mudbrick", "Obsidian", "Papyrus", "Pearl", "Pink Limestone", "Plaster", "Plastic", "Pumice", "Quartz", "Quartzite", "Sandstone", "Semiprecious", "Shale", "Shell", "Silver", "Steatite", "Stone", "Tin", "Tuff", "Turquoise", "Wood"]
    end

    def shape_modifiers
      ["Exactly", "Nearly", "Rounded", "Slightly"]
    end

    def shape
      ["Amorphic", "Anthropomorphic", "Barrel", "Bell-shaped", "Biconical", "Bowl", "Box", "Bullet", "Chisel", "Circular", "Conical", "Crescent", "Cube", "Curved", "Curvilinear", "Cylindrical", "Diamond", "Disk", "Donut", "Eye shape", "Flat", "Hemispherical", "Hexagonal", "Hourglass", "Linear", "Loafshape", "Lotusseed", "Lunate", "Mushroom", "Obelisk", "Oblong", "Oval", "Ovoid", "Pentagonal", "Pyramidal", "Rectangular", "Rectilinear", "Rhombus", "Scaraboid", "Semi-circular", "Spherical", "Square", "Tear drop", "Trapezoid", "Triangular", "UD", "Unknown", "Various", "Zoomorphic"]
    end

    def decoration
      ["Applique", "Burnishing", "Drilling", "Etching", "Fluting", "Glazing", "Impression", "Incising", "Inscribing", "Molding", "None", "Paint", "Puncturing", "Stamped", "Striping"]
    end

    def certainty
      %w( Certain Possible Probable Uncertain )
    end

    def preservation
      %w( Complete Fragment )
    end

    def craftsmanship
      ["Crude", "Fine", "Moderate", "Natural", "Very crude", "Very fine"]
    end

    def color
      ["1GLEY 4/N", "2.5Y 3/1", "2.5Y 3/2", "2.5Y 3/3", "2.5Y 4/1", "2.5Y 4/2", "2.5Y 4/3", "2.5Y 4/4", "2.5Y 5/2", "2.5Y 5/3", "2.5Y 5/4", "2.5Y 5/6", "2.5Y 6/2", "2.5Y 6/3", "2.5Y 6/4", "2.5Y 6/6", "2.5Y 6/8", "2.5Y 7/2", "2.5Y 7/3", "2.5Y 7/4", "2.5Y 7/6", "2.5Y 7/8", "2.5Y 8/2", "2.5Y 8/3", "2.5Y 8/4", "2.5Y 8/6", "2.5Y 8/8", "2.5YR 2.5/2", "2.5YR 2.5/3", "2.5YR 2.5/4", "2.5YR 3/1", "2.5YR 3/2", "2.5YR 3/3", "2.5YR 3/4", "2.5YR 3/6", "2.5YR 4/1", "2.5YR 4/2", "2.5YR 4/3", "2.5YR 4/4", "2.5YR 4/6", "2.5YR 4/8", "2.5YR 5/2", "2.5YR 5/3", "2.5YR 5/4", "2.5YR 5/6", "2.5YR 5/8", "2.5YR 6/1", "2.5YR 6/2", "2.5YR 6/3", "2.5YR 6/4", "2.5YR 6/6", "2.5YR 6/8", "2.5YR 7/1", "2.5YR 7/3", "2.5YR 7/4", "5R 2.5/1", "5R 2.5/2", "5R 2.5/3", "5R 2.5/4", "5R 2.5/6", "5R 3/1", "5R 3/2", "5R 3/3", "5R 3/4", "5R 3/6", "5R 3/8", "5R 4/1", "5R 4/2", "5R 4/3", "5R 4/4", "5GLEY 4/2", "5R 4/6", "5R 4/8", "5R 5/1", "5R 5/2", "5R 5/3", "5R 5/4", "5R 5/6", "5R 5/8", "5R 6/1", "5R 6/2", "5R 6/3", "5R 6/4", "5R 6/6", "5R 6/8", "5Y 2.5/1", "5Y 2.5/2", "5Y 3/1", "5Y 3/2", "5Y 4/1", "5Y 4/2", "5Y 4/3", "5Y 4/4", "5Y 5/1", "5Y 5/2", "5Y 5/3", "5Y 5/4", "5Y 5/6", "5Y 6/1", "5Y 6/2", "5Y 6/3", "5Y 6/4", "5Y 6/6", "5Y 6/8", "5Y 7/1", "5Y 7/2", "5Y 7/3", "5Y 7/4", "5Y 7/6", "5Y 7/8", "5Y 8/1", "5Y 8/2", "5Y 8/3", "5Y 8/4", "5Y 8/6", "5Y 8/8", "5YR 2.5/1", "5YR 2.5/2", "5YR 3/1", "5YR 3/2", "5YR 3/3", "5YR 3/4", "5YR 4/1", "5YR 4/2", "5YR 4/3", "5YR 4/4", "5YR 4/6", "5YR 5/1", "5YR 5/2", "5YR 5/3", "5YR 5/4", "5YR 5/6", "5YR 5/8", "5YR 6/1", "5YR 6/2", "5YR 6/3", "5YR 6/4", "5YR 6/6", "5YR 6/8", "5YR 7/1", "5YR 7/2", "5YR 7/3", "5YR 7/4", "5YR 7/6", "5YR 7/8", "5YR 8/1", "5YR 8/2", "5YR 8/3", "5YR 8/4", "7.5R 2.5/2", "7.5R 2.5/4", "7.5R 3/2", "7.5R 3/4", "7.5R 3/6", "7.5R 3/8", "7.5R 4/2", "7.5R 4/4", "7.5R 4/6", "7.5R 4/8", "7.5R 5/2", "7.5R 5/4", "7.5R 5/6", "7.5R 5/8", "7.5R 6/2", "7.5R 6/4", "7.5R 6/6", "7.5R 6/8", "7.5YR 3/2", "7.5YR 3/3", "7.5YR 3/4", "7.5YR 4/1", "7.5YR 4/2", "7.5YR 4/3", "7.5YR 4/4", "7.5YR 4/6", "7.5YR 5/2", "7.5YR 5/3", "7.5YR 5/4", "7.5YR 5/6", "7.5YR 5/8", "7.5YR 6/1", "7.5YR 6/2", "7.5YR 6/3", "7.5YR 6/4", "7.5YR 6/6", "7.5YR 6/8", "7.5YR 7/2", "7.5YR 7/3", "7.5YR 7/4", "7.5YR 7/6", "7.5YR 7/8", "7.5YR 8/2", "7.5YR 8/3", "7.5YR 8/4", "7.5YR 8/6", "10R 2.5/1", "10R 2.5/2", "10R 3/1", "10R 3/2", "10R 3/3", "10R 3/4", "10R 3/6", "10R 4/1", "10R 4/2", "10R 4/3", "10R 4/4", "10R 4/6", "10R 4/8", "10R 5/1", "10R 5/2", "10R 5/3", "10R 5/4", "10R 5/6", "10R 5/8", "10R 6/1", "10R 6/2", "10R 6/3", "10R 6/4", "10R 6/6", "10R 6/8", "10R 8/1", "10R 8/2", "10YR 2/1", "10YR 2/2", "10YR 3/1", "10YR 3/2", "10YR 3/3", "10YR 3/4", "10YR 3/6", "10YR 4/1", "10YR 4/2", "10YR 4/3", "10YR 4/4", "10YR 4/6", "10YR 5/1", "10YR 5/2", "10YR 5/3", "10YR 5/4", "10YR 5/6", "10YR 5/8", "10YR 6/1", "10YR 6/2", "10YR 6/3", "10YR 6/4", "10YR 6/6", "10YR 6/8", "10YR 7/1", "10YR 7/2", "10YR 7/3", "10YR 7/4", "10YR 7/6", "10YR 7/8", "10YR 8/1", "10YR 8/2", "10YR 8/3", "10YR 8/4", "10YR 8/6", "10YR 8/8", "Aquamarine", "Black", "Blue", "Brown", "Cream", "Dark", "Gray", "Green", "N 2.5/0", "N 2/0", "N 3/0", "N 4/0", "N 5/0", "N 6/0", "N 7/0", "N 8/0", "Pink", "Purple", "Red", "Tan", "Turquoise", "White", "Yellow"]
    end

    def condition
      %w( Excellent Good Moderate Poor )
    end

    def fields
      %w( H J L N P Site84 ).sort
    end

    def squares
      %w( 6K46 6K56 6K66 6K76 6K86 6K88 7K02 4N80 4N93 4N94 4N62 4N72 ).sort
    end

    def autocomplete(type)
      hash = Hash.new
      Artifact.send(type).each{|item| hash[item] = ""}
      hash.to_json
    end
  end
end
