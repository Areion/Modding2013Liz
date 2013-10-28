//Maya ASCII 2014 scene
//Name: Stick Figure.ma
//Last modified: Mon, Sep 16, 2013 07:12:46 PM
//Codeset: UTF-8
requires maya "2014";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014 x64";
fileInfo "cutIdentifier" "201303010035-864206";
fileInfo "osv" "Mac OS X 10.7.5";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.8560824323057181 9.1112631778542301 13.050033458459888 ;
	setAttr ".r" -type "double3" -18.000000000003695 27.999999999999996 9.0055024420109883e-16 ;
	setAttr ".rp" -type "double3" 2.2204460492503131e-16 0 1.7763568394002505e-15 ;
	setAttr ".rpt" -type "double3" -1.8855186209283387e-19 1.0682463647739855e-15 -5.947817778755363e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 14.602042293158229;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 1.4037630990819521 2.5640674830577028 -0.23072866618779558 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "singleProfileBirailSurface1";
createNode nurbsSurface -n "singleProfileBirailSurfaceShape1" -p "singleProfileBirailSurface1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
createNode transform -n "pCube1";
	setAttr ".t" -type "double3" 1.5945405693712535 0.76641326382638419 -0.026456538076056853 ;
	setAttr ".r" -type "double3" 0.072338118123678671 -1.388557227414509 33.44823846210668 ;
	setAttr ".s" -type "double3" 0.52963215118890261 1 0.60728629343747387 ;
createNode transform -n "transform1" -p "pCube1";
	setAttr ".v" no;
createNode mesh -n "pCubeShape1" -p "transform1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube2";
	setAttr ".t" -type "double3" 1.5031512995898151 0.66650035988303735 -0.23072866618779386 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.73479510601667364 1 0.7615548080612109 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "pCubeShape2" -p "pCube2";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "pCubeShape2Orig" -p "pCube2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode joint -n "joint1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" -0.017356487515131747 3.3151340783736378 -0.17196598843753447 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -59.304383211178568 ;
	setAttr ".bps" -type "matrix" 0.51047713645762627 -0.85989132636282717 -0 0 0.85989132636282717 0.51047713645762627 0 0
		 0 -0 1 0 -0.017356487515131747 3.3151340783736378 -0.17196598843753447 1;
	setAttr ".radi" 0.51392498264185993;
createNode joint -n "joint2" -p "joint1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 1.9713995808637164 -0.2791070483497366 -0.088181871626549391 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -89.999999999999957 33.680653180150919 -30.695616788821408 ;
	setAttr ".bps" -type "matrix" 3.3306690738754696e-16 -0.83214142663339785 -0.55456347344603696 0
		 4.7184478546569153e-16 0.55456347344603696 -0.83214142663339774 0 1 1.1102230246251565e-16 6.6613381477509392e-16 0
		 0.74899619533527417 1.4774669111869014 -0.26014786006408386 1;
	setAttr ".radi" 0.53113235010847459;
createNode joint -n "joint3" -p "joint2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 1.2243803211267188 -0.82697360297784206 -2.1675471428451717e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 56.319346819849073 -89.999999999999986 0 ;
	setAttr ".bps" -type "matrix" 1 -1.0453466869784369e-16 5.891891159875567e-16 0 2.065537166024384e-16 1 -2.2204460492503116e-16 0
		 -5.7734833397771763e-16 3.8857805861880479e-16 1 0 0.74899619533527395 -2.969292012267033e-08 -0.2509854699969486 1;
	setAttr ".radi" 0.53113235010847459;
createNode joint -n "joint9" -p "joint1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -1.3951856758579226 0.77295229965978407 -0.098081629218965238 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -45.899829651338436 57.09506632570158 8.4364528903104219 ;
	setAttr ".bps" -type "matrix" 0.34284849690427716 -0.42139285223271811 -0.83957308928862906 0
		 0.15930905217646751 0.90687819694111882 -0.39011865093514941 0 0.92578374044109979 1.1102230246251565e-16 0.37805352257965608 0
		 -0.064911897984132882 4.9094166162581878 -0.27004761765649971 1;
	setAttr ".radi" 1.0777321056828677;
createNode joint -n "joint10" -p "joint9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 1.1503251372426939 -0.67212054058856818 1.6617608034413114 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 218.02134001367759 24.922555344114315 ;
	setAttr ".bps" -type "matrix" 0.27241752811562009 -4.2637567922978634e-17 0.96217913632305252 0
		 -1.9428902930940239e-16 1.0000000000000002 1.6653345369377348e-16 0 -0.96217913632305285 -2.2623918224195961e-16 0.27241752811561992 0
		 1.7608315923295357 3.8151463617044454 -0.34538836283171154 1;
	setAttr ".radi" 0.61983397475191615;
createNode joint -n "joint11" -p "joint10";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.2618185889181307 -0.63916137515438898 -0.71324598101952719 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -72.090430831642379 27.641733625582347 -81.472901017534099 ;
	setAttr ".bps" -type "matrix" 0.48217779386573878 -0.87607338454193995 4.7184478546569153e-16 0
		 0.87607338454194006 0.48217779386573872 -2.7755575615628914e-17 0 -1.6653345369377348e-16 3.9694386401301953e-16 0.99999999999999989 0
		 2.51842596714059 3.1759849865500565 -0.28777268616088425 1;
	setAttr ".radi" 0.61983397475191615;
createNode joint -n "joint12";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.0173565 3.31513 -0.171966 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 -7.0622500768802538e-31 59.304383211178568 ;
	setAttr ".bps" -type "matrix" 0.51047713645762627 0.85989132636282717 0 0 0.85989132636282717 -0.51047713645762638 -1.2246467991473532e-16 0
		 -1.0530631604448083e-16 6.2515419120073869e-17 -1 0 0.0173565 3.3151299999999999 -0.17196600000000001 1;
	setAttr ".radi" 0.51392498264185993;
createNode joint -n "joint13" -p "joint12";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -1.971393324521056 0.27910354689625261 0.088181999999999927 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -89.999999999999972 33.680653180150919 -30.695616788821415 ;
	setAttr ".bps" -type "matrix" 3.914659437889804e-16 0.83214142663339796 0.55456347344603707 0
		 2.2640762614490632e-16 -0.55456347344603696 0.83214142663339774 0 1 -3.3306690738754696e-16 -4.3837322343202779e-16 0
		 -0.74899600000000055 1.4774699999999998 -0.26014799999999993 1;
	setAttr ".radi" 0.53113235010847459;
createNode joint -n "joint14" -p "joint13";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -1.2243825532095522 0.82697582347115584 8.8817841970012523e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 56.319346819849095 -89.999999999999957 0 ;
	setAttr ".bps" -type "matrix" 0.99999999999999989 4.3680760672850683e-16 7.9849574570446781e-18 0
		 4.6593618540173317e-16 -1 -3.8857805861880508e-16 0 3.8593331305711422e-17 2.2204460492503116e-16 -0.99999999999999978 0
		 -0.748996 -2.9692900138655887e-08 -0.25098500000000001 1;
	setAttr ".radi" 0.53113235010847459;
createNode joint -n "joint15" -p "joint12";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.3709161427069905 -0.81384859388302933 0.098082000000000058 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -45.899829651338479 57.095066325701616 8.4364528903104219 ;
	setAttr ".bps" -type "matrix" 0.34284849690427688 0.42139285223271761 0.83957308928862961 0
		 0.15930905217646654 -0.90687819694111904 0.39011865093514936 0 0.92578374044110023 -6.9801079159246427e-16 -0.37805352257965552 0
		 0.017356499999998991 4.909419999999999 -0.27004799999999995 1;
	setAttr ".radi" 1.0777321056828677;
createNode joint -n "joint16" -p "joint15";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -1.1503254362129445 0.67212012097580232 -1.6617638714760929 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 218.02134001367753 24.922555344114315 ;
	setAttr ".bps" -type "matrix" 0.27241752811561987 1.2516832405183364e-16 -0.96217913632305274 0
		 -9.4368957093138306e-16 -1 -3.8857805861880479e-16 0 -0.96217913632305296 1.0217246996721704e-15 -0.27241752811561981 0
		 -1.8083899999999999 3.81515 -0.34538799999999992 1;
	setAttr ".radi" 0.61983397475191615;
createNode joint -n "joint17" -p "joint16";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -0.26181674606436511 0.63917 0.71324195600459972 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -72.090430831642436 27.641733625582319 -81.472901017534141 ;
	setAttr ".bps" -type "matrix" 0.48217779386573911 0.8760733845419395 1.3877787807814457e-16 0
		 0.87607338454193973 -0.48217779386573895 -1.1102230246251565e-16 0 5.5511151231257827e-17 2.3223661333679044e-16 -1 0
		 -2.5659800000000006 3.1759800000000009 -0.28777299999999995 1;
	setAttr ".radi" 0.61983397475191615;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n"
		+ "            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n"
		+ "                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n"
		+ "                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n"
		+ "            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n"
		+ "                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n"
		+ "                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n"
		+ "                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n"
		+ "                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n"
		+ "            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n"
		+ "                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n"
		+ "                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n"
		+ "                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n"
		+ "\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode polyCube -n "polyCube1";
	setAttr ".w" 0.92719823482620545;
	setAttr ".h" 1.5328265276527679;
	setAttr ".d" 0.97411655033204347;
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 0.44178688021142148 0.29183873661455273 0.012834323405051827 0
		 -0.55120850826319712 0.83436657852054474 0.0012621672553641899 0 -0.01185624835337987 -0.0087509930737533423 0.60710747952255684 0
		 1.5945405693712535 0.76641326382638419 -0.026456538076056853 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.1720871 1.4058828 -0.025489196 ;
	setAttr ".rs" 760613532;
	setAttr ".lt" -type "double3" 2.0660255902187497e-16 7.2576493426179667e-16 1.2331827908480681 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.96150036240784553 1.2663244589931064 -0.32713590322480574 ;
	setAttr ".cbx" -type "double3" 1.3826737442217043 1.5454413066864867 0.27615751054323578 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 0.44178688021142148 0.29183873661455273 0.012834323405051827 0
		 -0.55120850826319712 0.83436657852054474 0.0012621672553641899 0 -0.01185624835337987 -0.0087509930737533423 0.60710747952255684 0
		 1.5945405693712535 0.76641326382638419 -0.026456538076056853 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.49234596 2.4348092 -0.023932748 ;
	setAttr ".rs" 220128022;
	setAttr ".lt" -type "double3" -4.9384424280913544e-16 4.5536491244391186e-17 0.25704692208168206 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.28175940656187359 2.2952508177977364 -0.32557944572584974 ;
	setAttr ".cbx" -type "double3" 0.7029325238812576 2.5743677764016901 0.27771394597359039 ;
createNode polyMirror -n "polyMirror1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 0.44178688021142148 0.29183873661455273 0.012834323405051827 0
		 -0.55120850826319712 0.83436657852054474 0.0012621672553641899 0 -0.01185624835337987 -0.0087509930737533423 0.60710747952255684 0
		 1.5945405693712535 0.76641326382638419 -0.026456538076056853 1;
	setAttr ".ws" yes;
	setAttr ".p" -type "double3" 2.2275810193741052 1.3881120827712925 -0.025516045443342017 ;
	setAttr ".d" -1;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 0.44178688021142148 0.29183873661455273 0.012834323405051827 0
		 -0.55120850826319712 0.83436657852054474 0.0012621672553641899 0 -0.01185624835337987 -0.0087509930737533423 0.60710747952255684 0
		 1.5945405693712535 0.76641326382638419 -0.026456538076056853 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.35065955 2.6492803 -0.023608215 ;
	setAttr ".rs" 1186465133;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.14007301128741867 2.5097220911597602 -0.32525490444973748 ;
	setAttr ".cbx" -type "double3" 0.5612461536349207 2.7888387804730432 0.27803847236689305 ;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 0.44178688021142148 0.29183873661455273 0.012834323405051827 0
		 -0.55120850826319712 0.83436657852054474 0.0012621672553641899 0 -0.01185624835337987 -0.0087509930737533423 0.60710747952255684 0
		 1.5945405693712535 0.76641326382638419 -0.026456538076056853 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.35065958 2.6492803 -0.023608215 ;
	setAttr ".rs" 2076276451;
	setAttr ".lt" -type "double3" -6.8665445847175023e-16 1.0824674490095276e-15 4.2434566106771765 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.0980017954414798 2.6429045550305768 -0.32521347712276233 ;
	setAttr ".cbx" -type "double3" 0.60331736852977114 2.655655693393363 0.27799704121499158 ;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[9]" -type "float3" -0.057368014 0.11034983 0.0013837541 ;
	setAttr ".tk[10]" -type "float3" -0.057367947 0.11034924 0.0013837541 ;
	setAttr ".tk[13]" -type "float3" -0.0715736 -0.13039248 0.0013837541 ;
	setAttr ".tk[14]" -type "float3" -0.07157357 -0.13039248 0.0013837541 ;
	setAttr ".tk[32]" -type "float3" 0.075005412 0.13648324 -0.0019461592 ;
	setAttr ".tk[33]" -type "float3" -0.081180021 -0.1362724 0.0019312059 ;
	setAttr ".tk[34]" -type "float3" -0.075005464 -0.13648324 0.0019461528 ;
	setAttr ".tk[35]" -type "float3" 0.081179738 0.13627252 -0.001931207 ;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 0.44178688021142148 0.29183873661455273 0.012834323405051827 0
		 -0.55120850826319712 0.83436657852054474 0.0012621672553641899 0 -0.01185624835337987 -0.0087509930737533423 0.60710747952255684 0
		 1.5945405693712535 0.76641326382638419 -0.026456538076056853 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.3713606 6.8920527 0.049724318 ;
	setAttr ".rs" 2037917743;
	setAttr ".lt" -type "double3" -1.8994162476668582e-15 -5.6378512969246231e-18 0.19137497891703201 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.11870304409615606 6.8856770788312689 -0.25188091123928819 ;
	setAttr ".cbx" -type "double3" 0.62401814322506166 6.898427870739499 0.35132955112571951 ;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	setAttr ".ics" -type "componentList" 1 "f[37]";
	setAttr ".ix" -type "matrix" 0.44178688021142148 0.29183873661455273 0.012834323405051827 0
		 -0.55120850826319712 0.83436657852054474 0.0012621672553641899 0 -0.01185624835337987 -0.0087509930737533423 0.60710747952255684 0
		 1.5945405693712535 0.76641326382638419 -0.026456538076056853 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.72136807 6.9858556 0.059354946 ;
	setAttr ".rs" 1646275053;
	setAttr ".lt" -type "double3" -6.4810048332804987e-16 1.0061396160665481e-16 1.3808964166209725 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.60962473057770872 6.8856768005121616 -0.23997564464497395 ;
	setAttr ".cbx" -type "double3" 0.83421378354027997 7.0843656464261597 0.35859960388787432 ;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[40]" -type "float3" -0.32684013 0.11768364 -5.5511151e-15 ;
	setAttr ".tk[41]" -type "float3" 0.32014447 -0.11568356 -5.884182e-15 ;
	setAttr ".tk[42]" -type "float3" 0.32684061 -0.11768362 4.4964032e-15 ;
	setAttr ".tk[43]" -type "float3" -0.32014588 0.11568417 4.6629367e-15 ;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	setAttr ".ics" -type "componentList" 1 "f[37]";
	setAttr ".ix" -type "matrix" 0.44178688021142148 0.29183873661455273 0.012834323405051827 0
		 -0.55120850826319712 0.83436657852054474 0.0012621672553641899 0 -0.01185624835337987 -0.0087509930737533423 0.60710747952255684 0
		 1.5945405693712535 0.76641326382638419 -0.026456538076056853 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.6478124 5.9618855 0.067262471 ;
	setAttr ".rs" 1338624126;
	setAttr ".lt" -type "double3" -9.2152695386647429e-16 -2.9837243786801082e-16 1.5668989078438678 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.536068852440106 5.8617067671110696 -0.23206809296872397 ;
	setAttr ".cbx" -type "double3" 1.7606580624734043 6.0603962881579641 0.36650709543103765 ;
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:47]";
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode polyCube -n "polyCube2";
	setAttr ".w" 1.0093151944874443;
	setAttr ".h" 1.3330007197660747;
	setAttr ".d" 1.1664962214043477;
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 0.73479510601667364 0 0 0 0 1 0 0 0 0 0.7615548080612109 0
		 1.5031512995898151 0.66650035988303735 -0.23072866618779386 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.5031513 1.3330008 -0.23072867 ;
	setAttr ".rs" 629034765;
	setAttr ".lt" -type "double3" 0 4.8116896001145098e-17 0.21669923490098197 ;
	setAttr ".d" 3;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.1323313456793049 1.3330007494589955 -0.67490409030018572 ;
	setAttr ".cbx" -type "double3" 1.8739712535003252 1.3330007494589955 0.21344675792459794 ;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 0.73479510601667364 0 0 0 0 1 0 0 0 0 0.7615548080612109 0
		 1.5031512995898151 0.66650035988303735 -0.23072866618779386 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.5031514 1.5497 -0.23072867 ;
	setAttr ".rs" 654185999;
	setAttr ".lt" -type "double3" -0.34929664316650078 5.1943715623453274e-17 0.85893369832602318 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.1323314332737076 1.5496999920508534 -0.67490409030018572 ;
	setAttr ".cbx" -type "double3" 1.8739713410947276 1.5496999920508534 0.21344675792459794 ;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 0.73479510601667364 0 0 0 0 1 0 0 0 0 0.7615548080612109 0
		 1.5031512995898151 0.66650035988303735 -0.23072866618779386 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.35346356 2.4086337 -0.23072867 ;
	setAttr ".rs" 316611376;
	setAttr ".lt" -type "double3" 0 -1.1779441220609378e-16 2.7195011290823095 ;
	setAttr ".d" 3;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.017356487515131747 2.4086337388655812 -0.67490409030018572 ;
	setAttr ".cbx" -type "double3" 0.72428359549469346 2.4086337388655812 0.21344675792459794 ;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk[0:23]" -type "float3"  -1.089271307 0 0 -1.089271307
		 0 0 -1.089271307 0 0 -1.089271307 0 0 -1.089271307 0 0 -1.089271307 0 0 -1.089271307
		 0 0 -1.089271307 0 0 -1.089271307 0 0 -1.089271307 0 0 -1.089271307 0 0 -1.089271307
		 0 0 -1.089271307 0 0 -1.089271307 0 0 -1.089271307 0 0 -1.089271307 0 0 -1.089271307
		 0 0 -1.089271307 0 0 -1.089271307 0 0 -1.089271307 0 0 -1.089271307 0 0 -1.089271307
		 0 0 -1.089271307 0 0 -1.089271307 0 0;
createNode polyExtrudeFace -n "polyExtrudeFace12";
	setAttr ".ics" -type "componentList" 1 "f[27]";
	setAttr ".ix" -type "matrix" 0.73479510601667364 0 0 0 0 1 0 0 0 0 0.7615548080612109 0
		 1.5031512995898151 0.66650035988303735 -0.23072866618779386 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.72428358 4.6748848 -0.23072867 ;
	setAttr ".rs" 384776671;
	setAttr ".lt" -type "double3" -4.1449169373086889e-16 0.85176288293493674 1.1332953625654931 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.72428359549469346 4.2216344178816945 -0.67490409030018572 ;
	setAttr ".cbx" -type "double3" 0.72428359549469346 5.1281349958083302 0.21344675792459794 ;
createNode polyExtrudeFace -n "polyExtrudeFace13";
	setAttr ".ics" -type "componentList" 1 "f[27]";
	setAttr ".ix" -type "matrix" 0.73479510601667364 0 0 0 0 1 0 0 0 0 0.7615548080612109 0
		 1.5031512995898151 0.66650035988303735 -0.23072866618779386 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.8575791 3.823122 -0.23072867 ;
	setAttr ".rs" 1441719671;
	setAttr ".lt" -type "double3" 7.5274233040113504e-17 0.20363497756073914 0.21400500787005503 ;
	setAttr ".d" 3;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.8575790997896449 3.3698716462752492 -0.67490409030018572 ;
	setAttr ".cbx" -type "double3" 1.8575790997896449 4.276372462620464 0.21344675792459794 ;
createNode polyExtrudeFace -n "polyExtrudeFace14";
	setAttr ".ics" -type "componentList" 1 "f[27]";
	setAttr ".ix" -type "matrix" 0.73479510601667364 0 0 0 0 1 0 0 0 0 0.7615548080612109 0
		 1.5031512995898151 0.66650035988303735 -0.23072866618779386 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.0715842 3.6194868 -0.23072867 ;
	setAttr ".rs" 365522165;
	setAttr ".lt" -type "double3" -8.253434258113246e-17 0.62614927540515508 0.75329836550634288 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.0715843132557366 3.1662364305159718 -0.67490409030018572 ;
	setAttr ".cbx" -type "double3" 2.0715843132557366 4.0727372468611867 0.21344675792459794 ;
createNode polyMirror -n "polyMirror2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:53]";
	setAttr ".ix" -type "matrix" 0.73479510601667364 0 0 0 0 1 0 0 0 0 0.7615548080612109 0
		 1.5031512995898151 0.66650035988303735 -0.23072866618779386 1;
	setAttr ".ws" yes;
	setAttr ".p" -type "double3" -0.017356487515131747 2.5640674830577046 -0.23072866618779389 ;
	setAttr ".d" 1;
	setAttr ".mm" 1;
createNode polyExtrudeFace -n "polyExtrudeFace15";
	setAttr ".ics" -type "componentList" 2 "f[1]" "f[55]";
	setAttr ".ix" -type "matrix" 0.73479510601667364 0 0 0 0 1 0 0 0 0 0.7615548080612109 0
		 1.5031512995898151 0.66650035988303735 -0.23072866618779386 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.017356487 5.1281352 -0.23072867 ;
	setAttr ".rs" 2066075314;
	setAttr ".lt" -type "double3" -5.5511151231257827e-17 -8.7954436372888524e-17 0.35388843312547724 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.75899657052495684 5.1281349958083302 -0.67490409030018572 ;
	setAttr ".cbx" -type "double3" 0.72428359549469346 5.1281349958083302 0.21344675792459794 ;
createNode polyExtrudeFace -n "polyExtrudeFace16";
	setAttr ".ics" -type "componentList" 2 "f[1]" "f[55]";
	setAttr ".ix" -type "matrix" 0.73479510601667364 0 0 0 0 1 0 0 0 0 0.7615548080612109 0
		 1.5031512995898151 0.66650035988303735 -0.23072866618779386 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.017356487 5.4513679 -0.23072867 ;
	setAttr ".rs" 1286520566;
	setAttr ".lt" -type "double3" 0.0092772247573941202 -7.7561288780117907e-17 0.77569500875148556 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.35289508037068451 5.4513676465651661 -0.67490409030018572 ;
	setAttr ".cbx" -type "double3" 0.31818210534042124 5.4513676465651661 0.21344675792459794 ;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[112:119]" -type "float3"  0 -0.030655902 0 -0.5526731
		 -0.030655902 0 -0.5526731 -0.030655902 0 0 -0.030655902 0 0 -0.030655902 0 0 -0.030655902
		 0 0.55267304 -0.030655902 0 0.55267304 -0.030655902 0;
createNode skinCluster -n "skinCluster1";
	setAttr -s 128 ".wl";
	setAttr -s 5 ".wl[0].w";
	setAttr ".wl[0].w[0]" 0.010446705566891914;
	setAttr ".wl[0].w[1]" 0.45844762418264878;
	setAttr ".wl[0].w[2]" 0.45844762418264856;
	setAttr ".wl[0].w[7]" 0.036329023033905408;
	setAttr ".wl[0].w[8]" 0.036329023033905408;
	setAttr -s 5 ".wl[1].w";
	setAttr ".wl[1].w[0]" 0.0080320229749537651;
	setAttr ".wl[1].w[1]" 0.49193200278784638;
	setAttr ".wl[1].w[2]" 0.49193200278784627;
	setAttr ".wl[1].w[7]" 0.0040519857246768291;
	setAttr ".wl[1].w[8]" 0.0040519857246768291;
	setAttr -s 5 ".wl[2].w";
	setAttr ".wl[2].w[0]" 0.42988124672831424;
	setAttr ".wl[2].w[1]" 0.47290695459760906;
	setAttr ".wl[2].w[2]" 0.015908946128152135;
	setAttr ".wl[2].w[6]" 0.042756952407007956;
	setAttr ".wl[2].w[7]" 0.038545900138916567;
	setAttr -s 5 ".wl[3].w";
	setAttr ".wl[3].w[0]" 0.45744300650963143;
	setAttr ".wl[3].w[1]" 0.51989725536840647;
	setAttr ".wl[3].w[2]" 0.012769330537719319;
	setAttr ".wl[3].w[6]" 0.0054187428925541823;
	setAttr ".wl[3].w[7]" 0.0044716646916886232;
	setAttr -s 5 ".wl[4].w";
	setAttr ".wl[4].w[0]" 0.43401231561925763;
	setAttr ".wl[4].w[1]" 0.48567790373987135;
	setAttr ".wl[4].w[2]" 0.012860815747076357;
	setAttr ".wl[4].w[6]" 0.034994890206647915;
	setAttr ".wl[4].w[7]" 0.032454074687146742;
	setAttr -s 5 ".wl[5].w";
	setAttr ".wl[5].w[0]" 0.45727957898520222;
	setAttr ".wl[5].w[1]" 0.52588228840557105;
	setAttr ".wl[5].w[2]" 0.009567082326239245;
	setAttr ".wl[5].w[6]" 0.0039401940445061437;
	setAttr ".wl[5].w[7]" 0.0033308562384813229;
	setAttr -s 5 ".wl[6].w";
	setAttr ".wl[6].w[0]" 0.0090653159889188799;
	setAttr ".wl[6].w[1]" 0.46357767846196024;
	setAttr ".wl[6].w[2]" 0.4635595603110369;
	setAttr ".wl[6].w[7]" 0.031898886161204433;
	setAttr ".wl[6].w[8]" 0.031898559076879586;
	setAttr -s 5 ".wl[7].w";
	setAttr ".wl[7].w[0]" 0.0066238613508170568;
	setAttr ".wl[7].w[1]" 0.49342981043552897;
	setAttr ".wl[7].w[2]" 0.49340588601994778;
	setAttr ".wl[7].w[7]" 0.0032702275520827013;
	setAttr ".wl[7].w[8]" 0.0032702146416233803;
	setAttr -s 5 ".wl[8].w";
	setAttr ".wl[8].w[0]" 0.46206147712423778;
	setAttr ".wl[8].w[1]" 0.44477974534913384;
	setAttr ".wl[8].w[2]" 0.012590775135342134;
	setAttr ".wl[8].w[6]" 0.044259468648719838;
	setAttr ".wl[8].w[7]" 0.036308533742566443;
	setAttr -s 5 ".wl[9].w";
	setAttr ".wl[9].w[0]" 0.49429263097723397;
	setAttr ".wl[9].w[1]" 0.41606318871702691;
	setAttr ".wl[9].w[2]" 0.0099696131429309921;
	setAttr ".wl[9].w[6]" 0.045658512682799524;
	setAttr ".wl[9].w[7]" 0.034016054480008634;
	setAttr -s 5 ".wl[10].w";
	setAttr ".wl[10].w[0]" 0.5311778292611391;
	setAttr ".wl[10].w[1]" 0.38165391789883757;
	setAttr ".wl[10].w[2]" 0.0079736264941015818;
	setAttr ".wl[10].w[6]" 0.047406382801452068;
	setAttr ".wl[10].w[7]" 0.031788243544469547;
	setAttr -s 5 ".wl[11].w";
	setAttr ".wl[11].w[0]" 0.48162117417480382;
	setAttr ".wl[11].w[1]" 0.49829517215816138;
	setAttr ".wl[11].w[2]" 0.010247074224084021;
	setAttr ".wl[11].w[6]" 0.0055406898456023448;
	setAttr ".wl[11].w[7]" 0.0042958895973485246;
	setAttr -s 5 ".wl[12].w";
	setAttr ".wl[12].w[0]" 0.49070114924265223;
	setAttr ".wl[12].w[1]" 0.49072682919492716;
	setAttr ".wl[12].w[2]" 0.0085047101978647493;
	setAttr ".wl[12].w[6]" 0.0058267779391892307;
	setAttr ".wl[12].w[7]" 0.004240533425366743;
	setAttr -s 5 ".wl[13].w";
	setAttr ".wl[13].w[0]" 0.49089811985297471;
	setAttr ".wl[13].w[1]" 0.49089811985297493;
	setAttr ".wl[13].w[2]" 0.0074259892653990491;
	setAttr ".wl[13].w[6]" 0.0064130551947590552;
	setAttr ".wl[13].w[7]" 0.0043647158338921905;
	setAttr -s 5 ".wl[14].w";
	setAttr ".wl[14].w[0]" 0.4841131971913179;
	setAttr ".wl[14].w[1]" 0.50117688226955015;
	setAttr ".wl[14].w[2]" 0.0075710785974266448;
	setAttr ".wl[14].w[6]" 0.0039722814608723267;
	setAttr ".wl[14].w[7]" 0.0031665604808330133;
	setAttr -s 5 ".wl[15].w";
	setAttr ".wl[15].w[0]" 0.49326063954311772;
	setAttr ".wl[15].w[1]" 0.49326063954311761;
	setAttr ".wl[15].w[2]" 0.0062307343485896961;
	setAttr ".wl[15].w[6]" 0.0041389823049959714;
	setAttr ".wl[15].w[7]" 0.0031090042601790539;
	setAttr -s 5 ".wl[16].w";
	setAttr ".wl[16].w[0]" 0.49337906530277847;
	setAttr ".wl[16].w[1]" 0.4933790653027787;
	setAttr ".wl[16].w[2]" 0.0054587583095019694;
	setAttr ".wl[16].w[6]" 0.0045648864420378609;
	setAttr ".wl[16].w[7]" 0.0032182246429029015;
	setAttr -s 5 ".wl[17].w";
	setAttr ".wl[17].w[0]" 0.46260054955308794;
	setAttr ".wl[17].w[1]" 0.46037364586213014;
	setAttr ".wl[17].w[2]" 0.010185615545866307;
	setAttr ".wl[17].w[6]" 0.036125967474613399;
	setAttr ".wl[17].w[7]" 0.030714221564302268;
	setAttr -s 5 ".wl[18].w";
	setAttr ".wl[18].w[0]" 0.49061355680170154;
	setAttr ".wl[18].w[1]" 0.43507833745738811;
	setAttr ".wl[18].w[2]" 0.0080933440732837945;
	setAttr ".wl[18].w[6]" 0.037233530098956823;
	setAttr ".wl[18].w[7]" 0.028981231568669781;
	setAttr -s 5 ".wl[19].w";
	setAttr ".wl[19].w[0]" 0.52457627955584063;
	setAttr ".wl[19].w[1]" 0.40261079628770113;
	setAttr ".wl[19].w[2]" 0.0065407096891087792;
	setAttr ".wl[19].w[6]" 0.038852517903471273;
	setAttr ".wl[19].w[7]" 0.02741969656387816;
	setAttr -s 5 ".wl[20].w";
	setAttr ".wl[20].w[0]" 0.44949512196712949;
	setAttr ".wl[20].w[1]" 0.014343573604428837;
	setAttr ".wl[20].w[3]" 0.0017706156875547687;
	setAttr ".wl[20].w[6]" 0.51911529870558348;
	setAttr ".wl[20].w[7]" 0.015275390035303486;
	setAttr -s 5 ".wl[21].w";
	setAttr ".wl[21].w[0]" 0.86254605992199229;
	setAttr ".wl[21].w[1]" 0.065787758611130343;
	setAttr ".wl[21].w[3]" 0.0070720115689532461;
	setAttr ".wl[21].w[6]" 0.05722148374486917;
	setAttr ".wl[21].w[7]" 0.0073726861530549895;
	setAttr -s 5 ".wl[22].w";
	setAttr ".wl[22].w[0]" 0.84719816507002743;
	setAttr ".wl[22].w[1]" 0.079078562081178611;
	setAttr ".wl[22].w[3]" 0.0086838560957864328;
	setAttr ".wl[22].w[4]" 0.0086030935027163694;
	setAttr ".wl[22].w[6]" 0.056436323250291194;
	setAttr -s 5 ".wl[23].w";
	setAttr ".wl[23].w[0]" 0.44685124121155817;
	setAttr ".wl[23].w[1]" 0.019340642689954769;
	setAttr ".wl[23].w[3]" 0.0023919230419967258;
	setAttr ".wl[23].w[6]" 0.51077670588010693;
	setAttr ".wl[23].w[7]" 0.020639487176383385;
	setAttr -s 5 ".wl[24].w";
	setAttr ".wl[24].w[0]" 0.50105228569287685;
	setAttr ".wl[24].w[3]" 0.0025863216026511117;
	setAttr ".wl[24].w[4]" 0.00079708921229218954;
	setAttr ".wl[24].w[6]" 0.49302093888546872;
	setAttr ".wl[24].w[9]" 0.0025433646067111585;
	setAttr -s 5 ".wl[25].w";
	setAttr ".wl[25].w[0]" 0.44837285260068871;
	setAttr ".wl[25].w[3]" 0.052825932352225075;
	setAttr ".wl[25].w[4]" 0.0012818058021820922;
	setAttr ".wl[25].w[6]" 0.44599705441585225;
	setAttr ".wl[25].w[9]" 0.05152235482905182;
	setAttr -s 5 ".wl[26].w";
	setAttr ".wl[26].w[0]" 0.24888195249237383;
	setAttr ".wl[26].w[3]" 0.24888195249237383;
	setAttr ".wl[26].w[4]" 0.00074219198133135928;
	setAttr ".wl[26].w[6]" 0.25074695151696047;
	setAttr ".wl[26].w[9]" 0.25074695151696047;
	setAttr -s 5 ".wl[27].w";
	setAttr ".wl[27].w[0]" 0.41916116860559477;
	setAttr ".wl[27].w[3]" 0.11198958843615367;
	setAttr ".wl[27].w[4]" 0.061449366889152722;
	setAttr ".wl[27].w[6]" 0.39168776168099295;
	setAttr ".wl[27].w[9]" 0.015712114388105894;
	setAttr -s 5 ".wl[28].w";
	setAttr ".wl[28].w[0]" 0.10432222696862643;
	setAttr ".wl[28].w[3]" 0.69225405209377266;
	setAttr ".wl[28].w[4]" 0.026555511639103517;
	setAttr ".wl[28].w[6]" 0.1329325743784433;
	setAttr ".wl[28].w[9]" 0.043935634920053972;
	setAttr -s 5 ".wl[29].w";
	setAttr ".wl[29].w[0]" 0.16673213030542591;
	setAttr ".wl[29].w[3]" 0.37237341168062438;
	setAttr ".wl[29].w[4]" 0.014095027076697624;
	setAttr ".wl[29].w[6]" 0.22339971546862603;
	setAttr ".wl[29].w[9]" 0.22339971546862603;
	setAttr -s 5 ".wl[30].w";
	setAttr ".wl[30].w[0]" 0.37885969139058973;
	setAttr ".wl[30].w[3]" 0.17292454991455095;
	setAttr ".wl[30].w[4]" 0.0925992388566797;
	setAttr ".wl[30].w[6]" 0.33649683574503303;
	setAttr ".wl[30].w[9]" 0.019119684093146416;
	setAttr -s 5 ".wl[31].w";
	setAttr ".wl[31].w[0]" 0.040188692241537094;
	setAttr ".wl[31].w[3]" 0.87508751208837765;
	setAttr ".wl[31].w[4]" 0.013826387239076268;
	setAttr ".wl[31].w[6]" 0.051445958079009424;
	setAttr ".wl[31].w[9]" 0.01945145035199957;
	setAttr -s 5 ".wl[32].w";
	setAttr ".wl[32].w[0]" 0.15104292511471301;
	setAttr ".wl[32].w[3]" 0.4208612276551939;
	setAttr ".wl[32].w[4]" 0.012449634861410264;
	setAttr ".wl[32].w[6]" 0.20782310618434136;
	setAttr ".wl[32].w[9]" 0.20782310618434136;
	setAttr -s 5 ".wl[33].w";
	setAttr ".wl[33].w[0]" 0.49227170396594622;
	setAttr ".wl[33].w[3]" 0.0082740120099655898;
	setAttr ".wl[33].w[4]" 0.0025221139860656322;
	setAttr ".wl[33].w[6]" 0.48880995178461922;
	setAttr ".wl[33].w[9]" 0.0081222182534033405;
	setAttr -s 5 ".wl[34].w";
	setAttr ".wl[34].w[0]" 0.42521384554986963;
	setAttr ".wl[34].w[3]" 0.076206749077933816;
	setAttr ".wl[34].w[4]" 0.0014405936671422256;
	setAttr ".wl[34].w[6]" 0.42339340276561072;
	setAttr ".wl[34].w[9]" 0.073745408939443549;
	setAttr -s 5 ".wl[35].w";
	setAttr ".wl[35].w[0]" 0.24864707441668132;
	setAttr ".wl[35].w[3]" 0.24864707441668132;
	setAttr ".wl[35].w[4]" 0.00045652455179360742;
	setAttr ".wl[35].w[6]" 0.25112466330742184;
	setAttr ".wl[35].w[9]" 0.25112466330742184;
	setAttr -s 5 ".wl[36].w";
	setAttr ".wl[36].w[0]" 0.0071856428072070893;
	setAttr ".wl[36].w[3]" 0.27903607485715953;
	setAttr ".wl[36].w[4]" 0.56445376534128788;
	setAttr ".wl[36].w[5]" 0.1432951185522055;
	setAttr ".wl[36].w[6]" 0.0060293984421401015;
	setAttr -s 5 ".wl[37].w";
	setAttr ".wl[37].w[0]" 0.0024411213800856362;
	setAttr ".wl[37].w[3]" 0.26449145474004143;
	setAttr ".wl[37].w[4]" 0.66318595346067988;
	setAttr ".wl[37].w[5]" 0.067880027974559096;
	setAttr ".wl[37].w[6]" 0.0020014424446340535;
	setAttr -s 5 ".wl[38].w";
	setAttr ".wl[38].w[0]" 0.0034300974305909583;
	setAttr ".wl[38].w[3]" 0.51945741823822378;
	setAttr ".wl[38].w[4]" 0.45772208443004209;
	setAttr ".wl[38].w[5]" 0.01549110108062899;
	setAttr ".wl[38].w[6]" 0.0038992988205142514;
	setAttr -s 5 ".wl[39].w";
	setAttr ".wl[39].w[0]" 0.0087450732697523775;
	setAttr ".wl[39].w[3]" 0.50052071382207219;
	setAttr ".wl[39].w[4]" 0.44553629759226338;
	setAttr ".wl[39].w[5]" 0.035288960615890284;
	setAttr ".wl[39].w[6]" 0.0099089547000218957;
	setAttr -s 5 ".wl[40].w";
	setAttr ".wl[40].w[0]" 0.0066435432435014083;
	setAttr ".wl[40].w[3]" 0.20862254669297581;
	setAttr ".wl[40].w[4]" 0.57808362931445745;
	setAttr ".wl[40].w[5]" 0.20138944502971054;
	setAttr ".wl[40].w[6]" 0.0052608357193547573;
	setAttr -s 5 ".wl[41].w";
	setAttr ".wl[41].w[0]" 0.0059383595490658889;
	setAttr ".wl[41].w[3]" 0.1480485687642869;
	setAttr ".wl[41].w[4]" 0.57098150997432073;
	setAttr ".wl[41].w[5]" 0.27059849808331976;
	setAttr ".wl[41].w[6]" 0.0044330636290065518;
	setAttr -s 5 ".wl[42].w";
	setAttr ".wl[42].w[0]" 0.0051542059674132843;
	setAttr ".wl[42].w[3]" 0.10142081140910313;
	setAttr ".wl[42].w[4]" 0.54631602369864829;
	setAttr ".wl[42].w[5]" 0.34348495858737954;
	setAttr ".wl[42].w[6]" 0.0036240003374556412;
	setAttr -s 5 ".wl[43].w";
	setAttr ".wl[43].w[0]" 0.0025378104636615854;
	setAttr ".wl[43].w[3]" 0.18628441825871284;
	setAttr ".wl[43].w[4]" 0.6959981740069906;
	setAttr ".wl[43].w[5]" 0.11322532355675646;
	setAttr ".wl[43].w[6]" 0.001954273713878402;
	setAttr -s 5 ".wl[44].w";
	setAttr ".wl[44].w[0]" 0.0024977567300616963;
	setAttr ".wl[44].w[3]" 0.12546721478484216;
	setAttr ".wl[44].w[4]" 0.69141015745016865;
	setAttr ".wl[44].w[5]" 0.17881430583645971;
	setAttr ".wl[44].w[6]" 0.0018105651984678349;
	setAttr -s 5 ".wl[45].w";
	setAttr ".wl[45].w[0]" 0.0023316811265547579;
	setAttr ".wl[45].w[3]" 0.081917476026999822;
	setAttr ".wl[45].w[4]" 0.65136310406419828;
	setAttr ".wl[45].w[5]" 0.26279775082654472;
	setAttr ".wl[45].w[6]" 0.0015899879557024952;
	setAttr -s 5 ".wl[46].w";
	setAttr ".wl[46].w[0]" 0.0024636315180279551;
	setAttr ".wl[46].w[3]" 0.49255746309312237;
	setAttr ".wl[46].w[4]" 0.48532449183985699;
	setAttr ".wl[46].w[5]" 0.016876921131336362;
	setAttr ".wl[46].w[6]" 0.0027774924176563712;
	setAttr -s 5 ".wl[47].w";
	setAttr ".wl[47].w[0]" 0.0018851017412243487;
	setAttr ".wl[47].w[3]" 0.4880920098616211;
	setAttr ".wl[47].w[4]" 0.4880920098616211;
	setAttr ".wl[47].w[5]" 0.019822061271979947;
	setAttr ".wl[47].w[6]" 0.0021088172635535096;
	setAttr -s 5 ".wl[48].w";
	setAttr ".wl[48].w[0]" 0.0016257702985929482;
	setAttr ".wl[48].w[3]" 0.48010418496969831;
	setAttr ".wl[48].w[4]" 0.48987625590679507;
	setAttr ".wl[48].w[5]" 0.026588280132755986;
	setAttr ".wl[48].w[6]" 0.0018055086921578115;
	setAttr -s 5 ".wl[49].w";
	setAttr ".wl[49].w[0]" 0.0068740812145135039;
	setAttr ".wl[49].w[3]" 0.4778677576386246;
	setAttr ".wl[49].w[4]" 0.46626578995385554;
	setAttr ".wl[49].w[5]" 0.041265248516595764;
	setAttr ".wl[49].w[6]" 0.0077271226764106023;
	setAttr -s 5 ".wl[50].w";
	setAttr ".wl[50].w[0]" 0.0055947417287151554;
	setAttr ".wl[50].w[3]" 0.46884460747413692;
	setAttr ".wl[50].w[4]" 0.46890625819842796;
	setAttr ".wl[50].w[5]" 0.050412374326508504;
	setAttr ".wl[50].w[6]" 0.0062420182722114515;
	setAttr -s 5 ".wl[51].w";
	setAttr ".wl[51].w[0]" 0.0047468425663016378;
	setAttr ".wl[51].w[3]" 0.45200469302992008;
	setAttr ".wl[51].w[4]" 0.4731856137335036;
	setAttr ".wl[51].w[5]" 0.064804141055726266;
	setAttr ".wl[51].w[6]" 0.0052587096145482919;
	setAttr -s 5 ".wl[52].w";
	setAttr ".wl[52].w[0]" 0.00848485488796045;
	setAttr ".wl[52].w[1]" 0.0083623798053062016;
	setAttr ".wl[52].w[3]" 0.028446629713367449;
	setAttr ".wl[52].w[4]" 0.47735306779668296;
	setAttr ".wl[52].w[5]" 0.47735306779668296;
	setAttr -s 5 ".wl[53].w";
	setAttr ".wl[53].w[0]" 0.0064841521088994849;
	setAttr ".wl[53].w[1]" 0.00642271674978292;
	setAttr ".wl[53].w[3]" 0.024603555365440538;
	setAttr ".wl[53].w[4]" 0.48124478788793856;
	setAttr ".wl[53].w[5]" 0.48124478788793856;
	setAttr -s 5 ".wl[54].w";
	setAttr ".wl[54].w[0]" 0.00090201517869293517;
	setAttr ".wl[54].w[3]" 0.025787847923646467;
	setAttr ".wl[54].w[4]" 0.48628503313539845;
	setAttr ".wl[54].w[5]" 0.48628503313539867;
	setAttr ".wl[54].w[6]" 0.00074007062686337599;
	setAttr -s 5 ".wl[55].w";
	setAttr ".wl[55].w[0]" 0.0015679321425829398;
	setAttr ".wl[55].w[3]" 0.033757434899928364;
	setAttr ".wl[55].w[4]" 0.48168462357964953;
	setAttr ".wl[55].w[5]" 0.48168462357964942;
	setAttr ".wl[55].w[6]" 0.0013053857981898942;
	setAttr -s 5 ".wl[56].w";
	setAttr ".wl[56].w[1]" 0.028655520017886679;
	setAttr ".wl[56].w[2]" 0.028655520017886679;
	setAttr ".wl[56].w[6]" 0.0093734257383124679;
	setAttr ".wl[56].w[7]" 0.46665776711295714;
	setAttr ".wl[56].w[8]" 0.46665776711295703;
	setAttr -s 5 ".wl[57].w";
	setAttr ".wl[57].w[1]" 0.0043460668090030468;
	setAttr ".wl[57].w[2]" 0.0043460668090030468;
	setAttr ".wl[57].w[6]" 0.0090759929397578997;
	setAttr ".wl[57].w[7]" 0.49111593672111808;
	setAttr ".wl[57].w[8]" 0.49111593672111797;
	setAttr -s 5 ".wl[58].w";
	setAttr ".wl[58].w[0]" 0.0057828242344116236;
	setAttr ".wl[58].w[1]" 0.0047601255514181911;
	setAttr ".wl[58].w[6]" 0.45846776091219155;
	setAttr ".wl[58].w[7]" 0.51672369247188132;
	setAttr ".wl[58].w[8]" 0.014265596830097385;
	setAttr -s 5 ".wl[59].w";
	setAttr ".wl[59].w[0]" 0.03432314169749897;
	setAttr ".wl[59].w[1]" 0.030746488956321889;
	setAttr ".wl[59].w[6]" 0.43538094970069324;
	setAttr ".wl[59].w[7]" 0.48506228926974931;
	setAttr ".wl[59].w[8]" 0.014487130375736597;
	setAttr -s 5 ".wl[60].w";
	setAttr ".wl[60].w[0]" 0.24888195249237383;
	setAttr ".wl[60].w[3]" 0.24888195249237383;
	setAttr ".wl[60].w[4]" 0.00074219198133135928;
	setAttr ".wl[60].w[6]" 0.25074695151696047;
	setAttr ".wl[60].w[9]" 0.25074695151696047;
	setAttr -s 5 ".wl[61].w";
	setAttr ".wl[61].w[0]" 0.22526449016151368;
	setAttr ".wl[61].w[3]" 0.22526449016151368;
	setAttr ".wl[61].w[6]" 0.16785066328220541;
	setAttr ".wl[61].w[9]" 0.36828529448805591;
	setAttr ".wl[61].w[10]" 0.01333506190671134;
	setAttr -s 5 ".wl[62].w";
	setAttr ".wl[62].w[0]" 0.20991323019240557;
	setAttr ".wl[62].w[3]" 0.20991323019240557;
	setAttr ".wl[62].w[6]" 0.15218921502420552;
	setAttr ".wl[62].w[9]" 0.41625452987466699;
	setAttr ".wl[62].w[10]" 0.011729794716316437;
	setAttr -s 5 ".wl[63].w";
	setAttr ".wl[63].w[0]" 0.24864707441668132;
	setAttr ".wl[63].w[3]" 0.24864707441668132;
	setAttr ".wl[63].w[4]" 0.00045652455179360742;
	setAttr ".wl[63].w[6]" 0.25112466330742184;
	setAttr ".wl[63].w[9]" 0.25112466330742184;
	setAttr -s 5 ".wl[64].w";
	setAttr ".wl[64].w[0]" 0.027293146967583871;
	setAttr ".wl[64].w[1]" 0.025148250286457032;
	setAttr ".wl[64].w[6]" 0.43944936128554973;
	setAttr ".wl[64].w[7]" 0.49668246652146225;
	setAttr ".wl[64].w[8]" 0.011426774938947218;
	setAttr -s 5 ".wl[65].w";
	setAttr ".wl[65].w[0]" 0.0043014627566930605;
	setAttr ".wl[65].w[1]" 0.0036263253612670854;
	setAttr ".wl[65].w[6]" 0.45893488905737134;
	setAttr ".wl[65].w[7]" 0.5221994960434122;
	setAttr ".wl[65].w[8]" 0.01093782678125634;
	setAttr -s 5 ".wl[66].w";
	setAttr ".wl[66].w[1]" 0.0035664891595836626;
	setAttr ".wl[66].w[2]" 0.0035664755768821783;
	setAttr ".wl[66].w[6]" 0.0076129530225145757;
	setAttr ".wl[66].w[7]" 0.49263806743495858;
	setAttr ".wl[66].w[8]" 0.49261601480606104;
	setAttr -s 5 ".wl[67].w";
	setAttr ".wl[67].w[1]" 0.024672662147197683;
	setAttr ".wl[67].w[2]" 0.024672422733376168;
	setAttr ".wl[67].w[6]" 0.008001890395715458;
	setAttr ".wl[67].w[7]" 0.47133650863547039;
	setAttr ".wl[67].w[8]" 0.47131651608824032;
	setAttr -s 5 ".wl[68].w";
	setAttr ".wl[68].w[0]" 0.0059238944785745297;
	setAttr ".wl[68].w[1]" 0.0045861634374528056;
	setAttr ".wl[68].w[6]" 0.48122744895597513;
	setAttr ".wl[68].w[7]" 0.4967597072278177;
	setAttr ".wl[68].w[8]" 0.011502785900179831;
	setAttr -s 5 ".wl[69].w";
	setAttr ".wl[69].w[0]" 0.035466478785404328;
	setAttr ".wl[69].w[1]" 0.028969758237418902;
	setAttr ".wl[69].w[6]" 0.46787085886729307;
	setAttr ".wl[69].w[7]" 0.45624947400901666;
	setAttr ".wl[69].w[8]" 0.01144343010086709;
	setAttr -s 5 ".wl[70].w";
	setAttr ".wl[70].w[0]" 0.0062301783884501326;
	setAttr ".wl[70].w[1]" 0.004532143572521288;
	setAttr ".wl[70].w[6]" 0.48981994502617721;
	setAttr ".wl[70].w[7]" 0.4898439101932186;
	setAttr ".wl[70].w[8]" 0.0095738228196329059;
	setAttr -s 5 ".wl[71].w";
	setAttr ".wl[71].w[0]" 0.036534430739243312;
	setAttr ".wl[71].w[1]" 0.027158484912947464;
	setAttr ".wl[71].w[6]" 0.50026648912474236;
	setAttr ".wl[71].w[7]" 0.42699120791782746;
	setAttr ".wl[71].w[8]" 0.0090493873052393311;
	setAttr -s 5 ".wl[72].w";
	setAttr ".wl[72].w[0]" 0.0068361383341579872;
	setAttr ".wl[72].w[1]" 0.004656134212545948;
	setAttr ".wl[72].w[6]" 0.49007606425115463;
	setAttr ".wl[72].w[7]" 0.49007606425115485;
	setAttr ".wl[72].w[8]" 0.0083555989509864047;
	setAttr -s 5 ".wl[73].w";
	setAttr ".wl[73].w[0]" 0.037928384083019261;
	setAttr ".wl[73].w[1]" 0.025441151006398474;
	setAttr ".wl[73].w[6]" 0.53767725401754352;
	setAttr ".wl[73].w[7]" 0.39171326396559336;
	setAttr ".wl[73].w[8]" 0.0072399469274454205;
	setAttr -s 5 ".wl[74].w";
	setAttr ".wl[74].w[0]" 0.0043501391290709807;
	setAttr ".wl[74].w[1]" 0.0034614898788350975;
	setAttr ".wl[74].w[6]" 0.48388826668168916;
	setAttr ".wl[74].w[7]" 0.49959161666250612;
	setAttr ".wl[74].w[8]" 0.0087084876478987269;
	setAttr -s 5 ".wl[75].w";
	setAttr ".wl[75].w[0]" 0.0045360935202990163;
	setAttr ".wl[75].w[1]" 0.0034043230688599966;
	setAttr ".wl[75].w[6]" 0.49243400572382368;
	setAttr ".wl[75].w[7]" 0.49243400572382356;
	setAttr ".wl[75].w[8]" 0.0071915719631937937;
	setAttr -s 5 ".wl[76].w";
	setAttr ".wl[76].w[0]" 0.0049839847131414074;
	setAttr ".wl[76].w[1]" 0.0035143980414978158;
	setAttr ".wl[76].w[6]" 0.49260449628431557;
	setAttr ".wl[76].w[7]" 0.49260449628431546;
	setAttr ".wl[76].w[8]" 0.0062926246767297358;
	setAttr -s 5 ".wl[77].w";
	setAttr ".wl[77].w[0]" 0.028130303013577915;
	setAttr ".wl[77].w[1]" 0.023804260635896492;
	setAttr ".wl[77].w[6]" 0.46804378658401347;
	setAttr ".wl[77].w[7]" 0.47099017055321846;
	setAttr ".wl[77].w[8]" 0.0090314792132937319;
	setAttr -s 5 ".wl[78].w";
	setAttr ".wl[78].w[0]" 0.028964146976473811;
	setAttr ".wl[78].w[1]" 0.022479506391783033;
	setAttr ".wl[78].w[6]" 0.49581780006299059;
	setAttr ".wl[78].w[7]" 0.44557038972972346;
	setAttr ".wl[78].w[8]" 0.007168156839029112;
	setAttr -s 5 ".wl[79].w";
	setAttr ".wl[79].w[0]" 0.030257955579089103;
	setAttr ".wl[79].w[1]" 0.021340966907651086;
	setAttr ".wl[79].w[6]" 0.53011288243641597;
	setAttr ".wl[79].w[7]" 0.4124879978593764;
	setAttr ".wl[79].w[8]" 0.0058001972174674269;
	setAttr -s 5 ".wl[80].w";
	setAttr ".wl[80].w[0]" 0.058687590544859496;
	setAttr ".wl[80].w[1]" 0.0079105445096077018;
	setAttr ".wl[80].w[6]" 0.85022471776763064;
	setAttr ".wl[80].w[7]" 0.075208554678685369;
	setAttr ".wl[80].w[9]" 0.0079685924992167964;
	setAttr -s 5 ".wl[81].w";
	setAttr ".wl[81].w[0]" 0.44949512196712949;
	setAttr ".wl[81].w[1]" 0.014343573604428837;
	setAttr ".wl[81].w[3]" 0.0017706156875547687;
	setAttr ".wl[81].w[6]" 0.51911529870558348;
	setAttr ".wl[81].w[7]" 0.015275390035303486;
	setAttr -s 5 ".wl[82].w";
	setAttr ".wl[82].w[0]" 0.057268234891712906;
	setAttr ".wl[82].w[6]" 0.83444533950262012;
	setAttr ".wl[82].w[7]" 0.089136883150940593;
	setAttr ".wl[82].w[9]" 0.0096351080504628508;
	setAttr ".wl[82].w[10]" 0.009514434404263453;
	setAttr -s 5 ".wl[83].w";
	setAttr ".wl[83].w[0]" 0.44685124121155817;
	setAttr ".wl[83].w[1]" 0.019340642689954769;
	setAttr ".wl[83].w[3]" 0.0023919230419967258;
	setAttr ".wl[83].w[6]" 0.51077670588010693;
	setAttr ".wl[83].w[7]" 0.020639487176383385;
	setAttr -s 5 ".wl[84].w";
	setAttr ".wl[84].w[0]" 0.38031178258696552;
	setAttr ".wl[84].w[3]" 0.017962363019924252;
	setAttr ".wl[84].w[6]" 0.41093122932750792;
	setAttr ".wl[84].w[9]" 0.12372938061949959;
	setAttr ".wl[84].w[10]" 0.067065244446102693;
	setAttr -s 5 ".wl[85].w";
	setAttr ".wl[85].w[0]" 0.50105228569287685;
	setAttr ".wl[85].w[3]" 0.0025863216026511117;
	setAttr ".wl[85].w[4]" 0.00079708921229218954;
	setAttr ".wl[85].w[6]" 0.49302093888546872;
	setAttr ".wl[85].w[9]" 0.0025433646067111585;
	setAttr -s 5 ".wl[86].w";
	setAttr ".wl[86].w[0]" 0.13078661420400448;
	setAttr ".wl[86].w[3]" 0.046048688143219399;
	setAttr ".wl[86].w[6]" 0.10250570736493693;
	setAttr ".wl[86].w[9]" 0.69455933049981911;
	setAttr ".wl[86].w[10]" 0.026099659788020192;
	setAttr -s 5 ".wl[87].w";
	setAttr ".wl[87].w[0]" 0.44837285260068871;
	setAttr ".wl[87].w[3]" 0.052825932352225075;
	setAttr ".wl[87].w[4]" 0.0012818058021820922;
	setAttr ".wl[87].w[6]" 0.44599705441585225;
	setAttr ".wl[87].w[9]" 0.05152235482905182;
	setAttr -s 5 ".wl[88].w";
	setAttr ".wl[88].w[0]" 0.32639971240098864;
	setAttr ".wl[88].w[3]" 0.021324512667036867;
	setAttr ".wl[88].w[6]" 0.36879760803038258;
	setAttr ".wl[88].w[9]" 0.18541223297518106;
	setAttr ".wl[88].w[10]" 0.098065933926410886;
	setAttr -s 5 ".wl[89].w";
	setAttr ".wl[89].w[0]" 0.051666505518896594;
	setAttr ".wl[89].w[3]" 0.020708045010441017;
	setAttr ".wl[89].w[6]" 0.040299359666808539;
	setAttr ".wl[89].w[9]" 0.87361907865469601;
	setAttr ".wl[89].w[10]" 0.013707011149157804;
	setAttr -s 5 ".wl[90].w";
	setAttr ".wl[90].w[6]" 0.0078932178258831042;
	setAttr ".wl[90].w[7]" 0.0077962466013209069;
	setAttr ".wl[90].w[9]" 0.028399708330997451;
	setAttr ".wl[90].w[10]" 0.47795541362089927;
	setAttr ".wl[90].w[11]" 0.47795541362089927;
	setAttr -s 5 ".wl[91].w";
	setAttr ".wl[91].w[6]" 0.0060113086776566495;
	setAttr ".wl[91].w[7]" 0.005964484053241053;
	setAttr ".wl[91].w[9]" 0.02450940179058847;
	setAttr ".wl[91].w[10]" 0.48175740273925693;
	setAttr ".wl[91].w[11]" 0.48175740273925693;
	setAttr -s 5 ".wl[92].w";
	setAttr ".wl[92].w[0]" 0.00067759787451755489;
	setAttr ".wl[92].w[6]" 0.00082029851494194988;
	setAttr ".wl[92].w[9]" 0.025558130540014379;
	setAttr ".wl[92].w[10]" 0.48647198653526308;
	setAttr ".wl[92].w[11]" 0.48647198653526308;
	setAttr -s 5 ".wl[93].w";
	setAttr ".wl[93].w[0]" 0.0012063310663802155;
	setAttr ".wl[93].w[6]" 0.0014423868266973531;
	setAttr ".wl[93].w[9]" 0.033684145975750722;
	setAttr ".wl[93].w[10]" 0.48183356806558586;
	setAttr ".wl[93].w[11]" 0.48183356806558586;
	setAttr -s 5 ".wl[94].w";
	setAttr ".wl[94].w[0]" 0.49227170396594622;
	setAttr ".wl[94].w[3]" 0.0082740120099655898;
	setAttr ".wl[94].w[4]" 0.0025221139860656322;
	setAttr ".wl[94].w[6]" 0.48880995178461922;
	setAttr ".wl[94].w[9]" 0.0081222182534033405;
	setAttr -s 5 ".wl[95].w";
	setAttr ".wl[95].w[0]" 0.42521384554986963;
	setAttr ".wl[95].w[3]" 0.076206749077933816;
	setAttr ".wl[95].w[4]" 0.0014405936671422256;
	setAttr ".wl[95].w[6]" 0.42339340276561072;
	setAttr ".wl[95].w[9]" 0.073745408939443549;
	setAttr -s 5 ".wl[96].w";
	setAttr ".wl[96].w[0]" 0.0019322855176857326;
	setAttr ".wl[96].w[6]" 0.002346562232690909;
	setAttr ".wl[96].w[9]" 0.27598578608846119;
	setAttr ".wl[96].w[10]" 0.65362012232880473;
	setAttr ".wl[96].w[11]" 0.066115243832357437;
	setAttr -s 5 ".wl[97].w";
	setAttr ".wl[97].w[0]" 0.005752934621914973;
	setAttr ".wl[97].w[6]" 0.0068494718551847704;
	setAttr ".wl[97].w[9]" 0.28754479683158624;
	setAttr ".wl[97].w[10]" 0.56017853166185083;
	setAttr ".wl[97].w[11]" 0.1396742650294632;
	setAttr -s 5 ".wl[98].w";
	setAttr ".wl[98].w[0]" 0.0037687090498349949;
	setAttr ".wl[98].w[6]" 0.0033051827569868519;
	setAttr ".wl[98].w[9]" 0.52534427365717218;
	setAttr ".wl[98].w[10]" 0.452757538487425;
	setAttr ".wl[98].w[11]" 0.014824296048580949;
	setAttr -s 5 ".wl[99].w";
	setAttr ".wl[99].w[0]" 0.0096356986114455277;
	setAttr ".wl[99].w[6]" 0.0084789234292832628;
	setAttr ".wl[99].w[9]" 0.50527381027040441;
	setAttr ".wl[99].w[10]" 0.44248743120045081;
	setAttr ".wl[99].w[11]" 0.03412413648841589;
	setAttr -s 5 ".wl[100].w";
	setAttr ".wl[100].w[0]" 0.0018909172863994673;
	setAttr ".wl[100].w[6]" 0.0024520908953747848;
	setAttr ".wl[100].w[9]" 0.19634828490368186;
	setAttr ".wl[100].w[10]" 0.68909931657918855;
	setAttr ".wl[100].w[11]" 0.11020939033535543;
	setAttr -s 5 ".wl[101].w";
	setAttr ".wl[101].w[0]" 0.0050324689092270444;
	setAttr ".wl[101].w[6]" 0.0063641148991545812;
	setAttr ".wl[101].w[9]" 0.21679045591431298;
	setAttr ".wl[101].w[10]" 0.57531397899620917;
	setAttr ".wl[101].w[11]" 0.19649898128109622;
	setAttr -s 5 ".wl[102].w";
	setAttr ".wl[102].w[0]" 0.0017597065081016302;
	setAttr ".wl[102].w[6]" 0.0024280471443122917;
	setAttr ".wl[102].w[9]" 0.13329938031215557;
	setAttr ".wl[102].w[10]" 0.68832912652275791;
	setAttr ".wl[102].w[11]" 0.17418373951267266;
	setAttr -s 5 ".wl[103].w";
	setAttr ".wl[103].w[0]" 0.0042681023508630064;
	setAttr ".wl[103].w[6]" 0.0057209305552942246;
	setAttr ".wl[103].w[9]" 0.15500175246059519;
	setAttr ".wl[103].w[10]" 0.57028641150033588;
	setAttr ".wl[103].w[11]" 0.26472280313291158;
	setAttr -s 5 ".wl[104].w";
	setAttr ".wl[104].w[0]" 0.001556243846140096;
	setAttr ".wl[104].w[6]" 0.0022803064415858197;
	setAttr ".wl[104].w[9]" 0.087563356215401664;
	setAttr ".wl[104].w[10]" 0.65202484615470579;
	setAttr ".wl[104].w[11]" 0.25657524734216658;
	setAttr -s 5 ".wl[105].w";
	setAttr ".wl[105].w[0]" 0.003511054714407374;
	setAttr ".wl[105].w[6]" 0.0049914595720992527;
	setAttr ".wl[105].w[9]" 0.10680454284634691;
	setAttr ".wl[105].w[10]" 0.54739183580283346;
	setAttr ".wl[105].w[11]" 0.3373011070643131;
	setAttr -s 5 ".wl[106].w";
	setAttr ".wl[106].w[0]" 0.0026567642715690353;
	setAttr ".wl[106].w[6]" 0.0023495824491921473;
	setAttr ".wl[106].w[9]" 0.49511607198666252;
	setAttr ".wl[106].w[10]" 0.48384402162631462;
	setAttr ".wl[106].w[11]" 0.016033559666261764;
	setAttr -s 5 ".wl[107].w";
	setAttr ".wl[107].w[0]" 0.0019877701218809561;
	setAttr ".wl[107].w[6]" 0.0017717452914571129;
	setAttr ".wl[107].w[9]" 0.48881397105625984;
	setAttr ".wl[107].w[10]" 0.48881397105625984;
	setAttr ".wl[107].w[11]" 0.018612542474142228;
	setAttr -s 5 ".wl[108].w";
	setAttr ".wl[108].w[0]" 0.0016797548179922663;
	setAttr ".wl[108].w[6]" 0.0015082141138624775;
	setAttr ".wl[108].w[9]" 0.48272907631292494;
	setAttr ".wl[108].w[10]" 0.48936878459059652;
	setAttr ".wl[108].w[11]" 0.024714170164623888;
	setAttr -s 5 ".wl[109].w";
	setAttr ".wl[109].w[0]" 0.0074644794483880329;
	setAttr ".wl[109].w[6]" 0.0066213047885570501;
	setAttr ".wl[109].w[9]" 0.48072781172703205;
	setAttr ".wl[109].w[10]" 0.46541952509126633;
	setAttr ".wl[109].w[11]" 0.039766878944756626;
	setAttr -s 5 ".wl[110].w";
	setAttr ".wl[110].w[0]" 0.0059865056622249594;
	setAttr ".wl[110].w[6]" 0.0053505017552319583;
	setAttr ".wl[110].w[9]" 0.470140122044374;
	setAttr ".wl[110].w[10]" 0.470140122044374;
	setAttr ".wl[110].w[11]" 0.04838274849379505;
	setAttr -s 5 ".wl[111].w";
	setAttr ".wl[111].w[0]" 0.0050121605492831275;
	setAttr ".wl[111].w[6]" 0.0045115950329655029;
	setAttr ".wl[111].w[9]" 0.45539373056963955;
	setAttr ".wl[111].w[10]" 0.47308020581144783;
	setAttr ".wl[111].w[11]" 0.062002308036664025;
	setAttr -s 5 ".wl[112].w";
	setAttr ".wl[112].w[0]" 0.24903854744595347;
	setAttr ".wl[112].w[3]" 0.24903854744595347;
	setAttr ".wl[112].w[4]" 0.0018468563051069265;
	setAttr ".wl[112].w[6]" 0.25003802440149309;
	setAttr ".wl[112].w[9]" 0.25003802440149309;
	setAttr -s 5 ".wl[113].w";
	setAttr ".wl[113].w[0]" 0.22718582168742707;
	setAttr ".wl[113].w[3]" 0.22791472625252007;
	setAttr ".wl[113].w[4]" 0.0040166454346061437;
	setAttr ".wl[113].w[6]" 0.27044140331272332;
	setAttr ".wl[113].w[9]" 0.27044140331272332;
	setAttr -s 5 ".wl[114].w";
	setAttr ".wl[114].w[0]" 0.22416759484245466;
	setAttr ".wl[114].w[3]" 0.22726364252445097;
	setAttr ".wl[114].w[4]" 0.0034567222520536893;
	setAttr ".wl[114].w[6]" 0.27255602019052033;
	setAttr ".wl[114].w[9]" 0.27255602019052033;
	setAttr -s 5 ".wl[115].w";
	setAttr ".wl[115].w[0]" 0.24905145289485545;
	setAttr ".wl[115].w[3]" 0.24905145289485545;
	setAttr ".wl[115].w[4]" 0.0014889306173157891;
	setAttr ".wl[115].w[6]" 0.25020408179648668;
	setAttr ".wl[115].w[9]" 0.25020408179648668;
	setAttr -s 5 ".wl[116].w";
	setAttr ".wl[116].w[0]" 0.24903854744595347;
	setAttr ".wl[116].w[3]" 0.24903854744595347;
	setAttr ".wl[116].w[4]" 0.0018468563051069265;
	setAttr ".wl[116].w[6]" 0.25003802440149309;
	setAttr ".wl[116].w[9]" 0.25003802440149309;
	setAttr -s 5 ".wl[117].w";
	setAttr ".wl[117].w[0]" 0.24905145289485545;
	setAttr ".wl[117].w[3]" 0.24905145289485545;
	setAttr ".wl[117].w[4]" 0.0014889306173157891;
	setAttr ".wl[117].w[6]" 0.25020408179648668;
	setAttr ".wl[117].w[9]" 0.25020408179648668;
	setAttr -s 5 ".wl[118].w";
	setAttr ".wl[118].w[0]" 0.27229652637010476;
	setAttr ".wl[118].w[3]" 0.27229652637010499;
	setAttr ".wl[118].w[6]" 0.22496841974367049;
	setAttr ".wl[118].w[9]" 0.22713046074610541;
	setAttr ".wl[118].w[10]" 0.0033080667700143324;
	setAttr -s 5 ".wl[119].w";
	setAttr ".wl[119].w[0]" 0.27006223938477192;
	setAttr ".wl[119].w[3]" 0.27006223938477192;
	setAttr ".wl[119].w[6]" 0.22784567434667477;
	setAttr ".wl[119].w[9]" 0.22817316881951319;
	setAttr ".wl[119].w[10]" 0.0038566780642682406;
	setAttr -s 5 ".wl[120].w";
	setAttr ".wl[120].w[0]" 0.24535242917706418;
	setAttr ".wl[120].w[3]" 0.24535242917706418;
	setAttr ".wl[120].w[4]" 0.01767652832106505;
	setAttr ".wl[120].w[6]" 0.24580930666240328;
	setAttr ".wl[120].w[9]" 0.24580930666240328;
	setAttr -s 5 ".wl[121].w";
	setAttr ".wl[121].w[0]" 0.23386082377804873;
	setAttr ".wl[121].w[3]" 0.23386082377804873;
	setAttr ".wl[121].w[4]" 0.033116609607336152;
	setAttr ".wl[121].w[6]" 0.2495808714182832;
	setAttr ".wl[121].w[9]" 0.2495808714182832;
	setAttr -s 5 ".wl[122].w";
	setAttr ".wl[122].w[0]" 0.23348101670413879;
	setAttr ".wl[122].w[3]" 0.23348101670413879;
	setAttr ".wl[122].w[4]" 0.03332909260750469;
	setAttr ".wl[122].w[6]" 0.24985443699210882;
	setAttr ".wl[122].w[9]" 0.24985443699210882;
	setAttr -s 5 ".wl[123].w";
	setAttr ".wl[123].w[0]" 0.24543061992320711;
	setAttr ".wl[123].w[3]" 0.24543061992320711;
	setAttr ".wl[123].w[4]" 0.017319081364101742;
	setAttr ".wl[123].w[6]" 0.24590983939474209;
	setAttr ".wl[123].w[9]" 0.24590983939474209;
	setAttr -s 5 ".wl[124].w";
	setAttr ".wl[124].w[0]" 0.24535242917706418;
	setAttr ".wl[124].w[3]" 0.24535242917706418;
	setAttr ".wl[124].w[4]" 0.01767652832106505;
	setAttr ".wl[124].w[6]" 0.24580930666240328;
	setAttr ".wl[124].w[9]" 0.24580930666240328;
	setAttr -s 5 ".wl[125].w";
	setAttr ".wl[125].w[0]" 0.24543061992320711;
	setAttr ".wl[125].w[3]" 0.24543061992320711;
	setAttr ".wl[125].w[4]" 0.017319081364101742;
	setAttr ".wl[125].w[6]" 0.24590983939474209;
	setAttr ".wl[125].w[9]" 0.24590983939474209;
	setAttr -s 5 ".wl[126].w";
	setAttr ".wl[126].w[0]" 0.24989516938685827;
	setAttr ".wl[126].w[3]" 0.24989516938685827;
	setAttr ".wl[126].w[6]" 0.23412118938392687;
	setAttr ".wl[126].w[9]" 0.23412118938392687;
	setAttr ".wl[126].w[10]" 0.031967282458429752;
	setAttr -s 5 ".wl[127].w";
	setAttr ".wl[127].w[0]" 0.24961349819515025;
	setAttr ".wl[127].w[3]" 0.24961349819515025;
	setAttr ".wl[127].w[6]" 0.23447737193452331;
	setAttr ".wl[127].w[9]" 0.23447737193452331;
	setAttr ".wl[127].w[10]" 0.031818259740652971;
	setAttr -s 12 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.51047713645762616 0.85989132636282695 0 -0 -0.85989132636282695 0.51047713645762616 -0 0
		 0 -0 1 -0 2.8595151297690022 -1.6773754582308795 0.17196598843753449 1;
	setAttr ".pm[1]" -type "matrix" 4.6179973926081759e-16 4.9274862927210514e-16 1 -0
		 -0.83214142663339796 0.55456347344603707 1.5490888322593014e-17 0 -0.55456347344603707 -0.83214142663339807 5.7734833397771772e-16 -0
		 1.0851929223920158 -1.0358289935787484 -0.74899619533527395 1;
	setAttr ".pm[2]" -type "matrix" 1 1.0453466869784392e-16 -5.891891159875567e-16 -0
		 -2.0655371660243827e-16 1 2.2204460492503128e-16 0 5.7734833397771772e-16 -3.8857805861880474e-16 1 -0
		 -0.74899619533527384 2.9692919946846814e-08 0.25098546999694904 1;
	setAttr ".pm[3]" -type "matrix" 0.3428484969042771 0.15930905217646749 0.92578374044109968 -0
		 -0.42139285223271816 0.90687819694111871 1.3877787807814457e-16 0 -0.83957308928862928 -0.39011865093514947 0.37805352257965619 -0
		 1.8643233047678991 -4.5472524483305703 0.16218683283416491 1;
	setAttr ".pm[4]" -type "matrix" 0.27241752811561987 -2.0606740011356258e-16 -0.9621791363230523 -0
		 -1.0730727753951941e-16 0.99999999999999978 -2.3230748222177978e-16 0 0.96217913632305263 1.0265649706830096e-16 0.27241752811562003 -0
		 -0.14735591316485319 -3.8151463617044437 1.7883252647604941 1;
	setAttr ".pm[5]" -type "matrix" 0.48217779386573834 0.87607338454193928 -2.0319715663340605e-16 -0
		 -0.87607338454193939 0.48217779386573839 4.2675378039921134e-16 0 4.2805068772594722e-16 -4.5501990221376981e-17 1.0000000000000002 -0
		 1.5680668395712556 -3.7377153949165756 0.28777268616088347 1;
	setAttr ".pm[6]" -type "matrix" 0.51047713645762627 0.85989132636282695 -1.0530631604448081e-16 -0
		 0.85989132636282695 -0.51047713645762616 6.2515419120073857e-17 0 -6.1629758220391534e-33 -1.2246467991473532e-16 -1 0
		 -2.8595116291841256 1.6773733655787535 -0.17196600000000023 1;
	setAttr ".pm[7]" -type "matrix" 5.202645489300481e-16 1.8008177849384132e-16 1 -0
		 0.83214142663339774 -0.55456347344603707 -2.0019762937336059e-16 0 0.55456347344603696 0.83214142663339796 -4.0549587854435139e-16 -0
		 -1.0851954151180061 1.0358308229681417 0.74899600000000077 1;
	setAttr ".pm[8]" -type "matrix" 1.0000000000000002 4.3680760672850693e-16 7.9849574570445117e-18 -0
		 4.6593618540173326e-16 -1 3.8857805861880523e-16 0 3.8593331305711545e-17 -2.2204460492503121e-16 -1.0000000000000002 -0
		 0.74899600000000022 -2.9692899867218603e-08 -0.25098500000000007 1;
	setAttr ".pm[9]" -type "matrix" 0.34284849690427677 0.15930905217646649 0.92578374044109968 -0
		 0.42139285223271766 -0.90687819694111882 -7.2164496600635146e-16 0 0.8395730892886295 0.39011865093514919 -0.37805352257965535 -0
		 -1.8480201129286511 4.5548316715103017 -0.11816096315655217 1;
	setAttr ".pm[10]" -type "matrix" 0.2724175281156197 -9.4898414365392358e-16 -0.9621791363230523 -0
		 1.1680412061431295e-16 -1 1.0138538905247311e-15 0 -0.96217913632305252 -3.9877006703056387e-16 -0.27241752811561976 0
		 0.16031200613265864 3.8151499999999978 -1.8340848735360458 1;
	setAttr ".pm[11]" -type "matrix" 0.48217779386573884 0.87607338454193928 -3.0348073188886749e-17 -0
		 0.8760733845419395 -0.482177793865739 1.7511209421873934e-16 0 2.30222560296155e-16 -6.3347495734596794e-17 -1 -0
		 -1.5451329723339009 3.7793738130286361 -0.28777300000000067 1;
	setAttr ".gm" -type "matrix" 0.73479510601667364 0 0 0 0 1 0 0 0 0 0.7615548080612109 0
		 1.5031512995898151 0.66650035988303735 -0.23072866618779386 1;
	setAttr -s 12 ".ma";
	setAttr -s 12 ".dpf[0:11]"  4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 12 ".lw";
	setAttr -s 12 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".bm" 0;
	setAttr ".ucm" yes;
	setAttr -s 12 ".ifcl";
	setAttr -s 12 ".ifcl";
createNode tweak -n "tweak1";
	setAttr -s 14 ".vl[0].vt";
	setAttr ".vl[0].vt[120]" -type "float3" -9.6069414e-08 0.11770524 0.48269141 ;
	setAttr ".vl[0].vt[121]" -type "float3" 0.37791356 0.11770524 0.48269141 ;
	setAttr ".vl[0].vt[122]" -type "float3" 0.37791356 0.11770524 -0.48269141 ;
	setAttr ".vl[0].vt[123]" -type "float3" -9.6069414e-08 0.11770524 -0.48269141 ;
	setAttr ".vl[0].vt[124]" -type "float3" -9.6069414e-08 0.11770524 0.48269141 ;
	setAttr ".vl[0].vt[125]" -type "float3" -9.6069414e-08 0.11770524 -0.48269141 ;
	setAttr ".vl[0].vt[126]" -type "float3" -0.37791362 0.11770524 -0.48269141 ;
	setAttr ".vl[0].vt[127]" -type "float3" -0.37791362 0.11770524 0.48269141 ;
createNode objectSet -n "skinCluster1Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	setAttr -s 12 ".wm";
	setAttr -s 12 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.017356487515131747
		 3.3151340783736378 -0.17196598843753447 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.49473369783266924 0.8690446295955192 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.9713995808637164 -0.2791070483497366
		 -0.088181871626549391 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.59842694231637816 0.37667651202307528 0.018417593640487839 0.706866884388068 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.2243803211267188 -0.82697360297784206
		 -2.1675471428451717e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.33370515674542811 -0.62341067392330496 0.333705156745428 0.62341067392330507 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.3951856758579226 0.77295229965978407
		 -0.098081629218965238 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.37396049180263097 0.41367473850950387 0.24533451028492081 0.7929928999386352 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.1503251372426939 -0.67212054058856818
		 1.6617608034413114 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.20401067794044489 0.92318488946027211 -0.070289009209980491 -0.31807036696741242 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.2618185889181307 -0.63916137515438898
		 -0.71324598101952719 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.30690322608918164 0.51923178423344096 -0.40585898152336541 0.68664929270671116 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.0173565 3.3151299999999999
		 -0.17196600000000001 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.8690446295955192 -0.49473369783266924 3.0293701974055613e-17 5.3213636197517489e-17 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.971393324521056 0.27910354689625261
		 0.088181999999999927 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.59842694231637827 0.37667651202307528 0.018417593640487867 0.70686688438806788 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.2243825532095522 0.82697582347115584
		 8.8817841970012523e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.33370515674542833 -0.62341067392330463 0.33370515674542806 0.62341067392330507 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.3709161427069905 -0.81384859388302933
		 0.098082000000000058 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.37396049180263119 0.41367473850950393 0.24533451028492104 0.79299289993863475 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.1503254362129445 0.67212012097580232
		 -1.6617638714760929 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.20401067794044492 0.92318488946027222 -0.070289009209980394 -0.31807036696741198 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.26181674606436511
		 0.63917000000000002 0.71324195600459972 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.30690322608918175 0.51923178423344118 -0.40585898152336558 0.68664929270671093 1
		 1 1 yes;
	setAttr -s 12 ".m";
	setAttr -s 12 ".p";
	setAttr ".bp" yes;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :initialShadingGroup;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 18 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surfaces" "Particles" "Fluids" "Image Planes" "UI:" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 18 0 1 1 1 1 1
		 1 0 0 0 0 0 0 0 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "groupId1.id" "pCubeShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape1.iog.og[0].gco";
connectAttr "groupParts1.og" "pCubeShape1.i";
connectAttr "groupId2.id" "pCubeShape1.ciog.cog[0].cgid";
connectAttr "skinCluster1GroupId.id" "pCubeShape2.iog.og[0].gid";
connectAttr "skinCluster1Set.mwc" "pCubeShape2.iog.og[0].gco";
connectAttr "groupId4.id" "pCubeShape2.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "pCubeShape2.iog.og[1].gco";
connectAttr "skinCluster1.og[0]" "pCubeShape2.i";
connectAttr "tweak1.vl[0].vt[0]" "pCubeShape2.twl";
connectAttr "polyExtrudeFace16.out" "pCubeShape2Orig.i";
connectAttr "joint1.s" "joint2.is";
connectAttr "joint2.s" "joint3.is";
connectAttr "joint1.s" "joint9.is";
connectAttr "joint9.s" "joint10.is";
connectAttr "joint10.s" "joint11.is";
connectAttr "joint12.s" "joint13.is";
connectAttr "joint13.s" "joint14.is";
connectAttr "joint12.s" "joint15.is";
connectAttr "joint15.s" "joint16.is";
connectAttr "joint16.s" "joint17.is";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCube1.out" "polyExtrudeFace2.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace2.out" "polyExtrudeFace3.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace3.out" "polyMirror1.ip";
connectAttr "pCubeShape1.wm" "polyMirror1.mp";
connectAttr "polyMirror1.out" "polyExtrudeFace4.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace4.mp";
connectAttr "polyTweak1.out" "polyExtrudeFace5.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak1.ip";
connectAttr "polyExtrudeFace5.out" "polyExtrudeFace6.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace6.mp";
connectAttr "polyTweak2.out" "polyExtrudeFace7.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak2.ip";
connectAttr "polyExtrudeFace7.out" "polyExtrudeFace8.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace8.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polyCube2.out" "polyExtrudeFace9.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace9.out" "polyExtrudeFace10.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace10.mp";
connectAttr "polyTweak3.out" "polyExtrudeFace11.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace11.mp";
connectAttr "polyExtrudeFace10.out" "polyTweak3.ip";
connectAttr "polyExtrudeFace11.out" "polyExtrudeFace12.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace12.mp";
connectAttr "polyExtrudeFace12.out" "polyExtrudeFace13.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace13.mp";
connectAttr "polyExtrudeFace13.out" "polyExtrudeFace14.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace14.mp";
connectAttr "polyExtrudeFace14.out" "polyMirror2.ip";
connectAttr "pCubeShape2.wm" "polyMirror2.mp";
connectAttr "polyMirror2.out" "polyExtrudeFace15.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace15.mp";
connectAttr "polyTweak4.out" "polyExtrudeFace16.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace16.mp";
connectAttr "polyExtrudeFace15.out" "polyTweak4.ip";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "joint1.wm" "skinCluster1.ma[0]";
connectAttr "joint2.wm" "skinCluster1.ma[1]";
connectAttr "joint3.wm" "skinCluster1.ma[2]";
connectAttr "joint9.wm" "skinCluster1.ma[3]";
connectAttr "joint10.wm" "skinCluster1.ma[4]";
connectAttr "joint11.wm" "skinCluster1.ma[5]";
connectAttr "joint12.wm" "skinCluster1.ma[6]";
connectAttr "joint13.wm" "skinCluster1.ma[7]";
connectAttr "joint14.wm" "skinCluster1.ma[8]";
connectAttr "joint15.wm" "skinCluster1.ma[9]";
connectAttr "joint16.wm" "skinCluster1.ma[10]";
connectAttr "joint17.wm" "skinCluster1.ma[11]";
connectAttr "joint1.liw" "skinCluster1.lw[0]";
connectAttr "joint2.liw" "skinCluster1.lw[1]";
connectAttr "joint3.liw" "skinCluster1.lw[2]";
connectAttr "joint9.liw" "skinCluster1.lw[3]";
connectAttr "joint10.liw" "skinCluster1.lw[4]";
connectAttr "joint11.liw" "skinCluster1.lw[5]";
connectAttr "joint12.liw" "skinCluster1.lw[6]";
connectAttr "joint13.liw" "skinCluster1.lw[7]";
connectAttr "joint14.liw" "skinCluster1.lw[8]";
connectAttr "joint15.liw" "skinCluster1.lw[9]";
connectAttr "joint16.liw" "skinCluster1.lw[10]";
connectAttr "joint17.liw" "skinCluster1.lw[11]";
connectAttr "joint1.obcc" "skinCluster1.ifcl[0]";
connectAttr "joint2.obcc" "skinCluster1.ifcl[1]";
connectAttr "joint3.obcc" "skinCluster1.ifcl[2]";
connectAttr "joint9.obcc" "skinCluster1.ifcl[3]";
connectAttr "joint10.obcc" "skinCluster1.ifcl[4]";
connectAttr "joint11.obcc" "skinCluster1.ifcl[5]";
connectAttr "joint12.obcc" "skinCluster1.ifcl[6]";
connectAttr "joint13.obcc" "skinCluster1.ifcl[7]";
connectAttr "joint14.obcc" "skinCluster1.ifcl[8]";
connectAttr "joint15.obcc" "skinCluster1.ifcl[9]";
connectAttr "joint16.obcc" "skinCluster1.ifcl[10]";
connectAttr "joint17.obcc" "skinCluster1.ifcl[11]";
connectAttr "groupParts3.og" "tweak1.ip[0].ig";
connectAttr "groupId4.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "pCubeShape2.iog.og[0]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId4.msg" "tweakSet1.gn" -na;
connectAttr "pCubeShape2.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "pCubeShape2Orig.w" "groupParts3.ig";
connectAttr "groupId4.id" "groupParts3.gi";
connectAttr "joint1.msg" "bindPose1.m[0]";
connectAttr "joint2.msg" "bindPose1.m[1]";
connectAttr "joint3.msg" "bindPose1.m[2]";
connectAttr "joint9.msg" "bindPose1.m[3]";
connectAttr "joint10.msg" "bindPose1.m[4]";
connectAttr "joint11.msg" "bindPose1.m[5]";
connectAttr "joint12.msg" "bindPose1.m[6]";
connectAttr "joint13.msg" "bindPose1.m[7]";
connectAttr "joint14.msg" "bindPose1.m[8]";
connectAttr "joint15.msg" "bindPose1.m[9]";
connectAttr "joint16.msg" "bindPose1.m[10]";
connectAttr "joint17.msg" "bindPose1.m[11]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[0]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.w" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[7]" "bindPose1.p[8]";
connectAttr "bindPose1.m[6]" "bindPose1.p[9]";
connectAttr "bindPose1.m[9]" "bindPose1.p[10]";
connectAttr "bindPose1.m[10]" "bindPose1.p[11]";
connectAttr "joint1.bps" "bindPose1.wm[0]";
connectAttr "joint2.bps" "bindPose1.wm[1]";
connectAttr "joint3.bps" "bindPose1.wm[2]";
connectAttr "joint9.bps" "bindPose1.wm[3]";
connectAttr "joint10.bps" "bindPose1.wm[4]";
connectAttr "joint11.bps" "bindPose1.wm[5]";
connectAttr "joint12.bps" "bindPose1.wm[6]";
connectAttr "joint13.bps" "bindPose1.wm[7]";
connectAttr "joint14.bps" "bindPose1.wm[8]";
connectAttr "joint15.bps" "bindPose1.wm[9]";
connectAttr "joint16.bps" "bindPose1.wm[10]";
connectAttr "joint17.bps" "bindPose1.wm[11]";
connectAttr "singleProfileBirailSurfaceShape1.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Stick Figure.ma
