.class public Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature;
.super Ljava/lang/Object;
.source "NodeFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;,
        Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$NodeVersionInfo;
    }
.end annotation


# static fields
.field private static final ALL_IN_FOCUS_BASE_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.allInFocus.arcsoft.AllInFocusNodeBase"

.field private static final ALL_IN_FOCUS_DUMMY_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.allInFocus.arcsoft.AllInFocusDummyNode"

.field private static final ARC_V1_ALL_IN_FOCUS_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.allInFocus.arcsoft.v1.ArcAllInFocusNode"

.field private static final ARC_V1_FACE_ALIGNMENT_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.faceAlignment.arcsoft.v1.ArcFaceAlignmentNode"

.field private static final ARC_V1_FACE_LANDMARK_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.faceLandmark.arcsoft.v1.ArcFaceLandmarkNode"

.field private static final ARC_V1_FACE_RECOGNITION_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.faceRecognition.arcsoft.v1.ArcFaceRecognitionNode"

.field private static final ARC_V1_FACE_RESTORATION_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.faceRestoration.arcsoft.v1.ArcFaceRestorationNode"

.field private static final ARC_V1_HIGH_RES_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.highRes.arcsoft.v1.ArcHighResNode"

.field private static final ARC_V1_LLHDR_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.llhdr.arcsoft.v1.ArcLlHdrNode"

.field private static final ARC_V1_MFHDR_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.mfhdr.arcsoft.v1.ArcMfHdrNode"

.field private static final ARC_V1_SIE_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.socialImgEnhance.arcsoft.v1.ArcSocialImgEnhanceNode"

.field private static final ARC_V1_SSHDR_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.sshdr.arcsoft.v1.ArcSsHdrNode"

.field private static final ARC_V1_SUPER_RESOLUTION_RAW_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.superResolutionRaw.arcsoft.v1.ArcSuperResolutionRawNode"

.field private static final ARC_V1_UW_SUPER_RESOLUTION_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.uwSuperResolution.arcsoft.v1.ArcUwSuperResolutionNode"

.field private static final ARC_V2_FACE_LANDMARK_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.faceLandmark.arcsoft.v2.ArcFaceLandmarkNode"

.field private static final ARC_V2_HIGH_RES_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.highRes.arcsoft.v2.ArcHighResNode"

.field private static final ARC_V2_HUMAN_TRACKING_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.humanTracking.arcsoft.v2.ArcHumanTrackingNode"

.field private static final ARC_V2_LLHDR_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.llhdr.arcsoft.v2.ArcLlHdrNode"

.field private static final ARC_V2_MFHDR_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.mfhdr.arcsoft.v2.ArcMfHdrNode"

.field private static final ARC_V2_SUPER_RESOLUTION_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.superResolution.arcsoft.v2.ArcSuperResolutionNode"

.field private static final ARC_V3_HUMAN_TRACKING_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.humanTracking.arcsoft.v3.ArcHumanTrackingNode"

.field private static final ARC_V3_LLHDR_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.llhdr.arcsoft.v3.ArcLlHdrNode"

.field private static final ARC_V3_MFHDR_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.mfhdr.arcsoft.v3.ArcMfHdrNode"

.field private static final ARC_V3_SUPER_NIGHT_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.superNight.arcsoft.v3.ArcSuperNightNode"

.field private static final ARC_V4_LLHDR_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.llhdr.arcsoft.v4.ArcLlHdrNode"

.field private static final ARC_V4_MFHDR_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.mfhdr.arcsoft.v4.ArcMfHdrNode"

.field private static final BASE_DEFAULT_NODE_CLASS_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private static final BASE_DUMMY_NODE_CLASS_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private static final BASE_TARGET_NODE_CLASS_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;",
            ">;"
        }
    .end annotation
.end field

.field private static final BASIC_JPEG_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.jpeg.BasicJpegNode"

.field private static final BEAUTY_BASE_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.beauty.BeautyNodeBase"

.field private static final BEAUTY_DUMMY_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.beauty.BeautyDummyNode"

.field private static final CONT_DETECTOR_BASE_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.contentsDetector.ContDetectorNodeBase"

.field private static final CONT_DETECTOR_DUMMY_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.contentsDetector.ContDetectorDummyNode"

.field private static final DEPTH_FOOD_BASE_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.food.depthFood.DepthFoodNodeBase"

.field private static final DEPTH_FOOD_DUMMY_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.food.depthFood.DepthFoodDummyNode"

.field private static final DUAL_BOKEH_BASE_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.dualBokeh.DualBokehNodeBase"

.field private static final DUAL_BOKEH_DUMMY_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.dualBokeh.DualBokehDummyNode"

.field public static ENABLE_SELFIE_CORRECTION:Z = false

.field public static ENABLE_UWDC_ARC:Z = false

.field private static final EVENT_DETECION_BASE_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.eventDetection.EventDetectionNodeBase"

.field private static final EVENT_DETECION_DUMMY_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.eventDetection.EventDetectionDummyNode"

.field private static final EXTERNAL_JPEG_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.jpeg.ExternalJpegNode"

.field private static final FACE_ALIGNMENT_BASE_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.faceAlignment.FaceAlignmentNodeBase"

.field private static final FACE_ALIGNMENT_DUMMY_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.faceAlignment.FaceAlignmentDummyNode"

.field private static final FACE_LANDMARK_BASE_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.faceLandmark.FaceLandmarkNodeBase"

.field private static final FACE_LANDMARK_DUMMY_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.faceLandmark.FaceLandmarkDummyNode"

.field private static final FACE_RECOGNITION_BASE_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.faceRecognition.FaceRecognitionNodeBase"

.field private static final FACE_RECOGNITION_DUMMY_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.faceRecognition.FaceRecognitionDummyNode"

.field private static final FACE_RESTORATION_BASE_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.faceRestoration.FaceRestorationNodeBase"

.field private static final FACE_RESTORATION_DUMMY_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.faceRestoration.FaceRestorationDummyNode"

.field private static final FACIAL_ATTRIBUTE_BASE_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.facialAttribute.FacialAttributeNodeBase"

.field private static final FACIAL_ATTRIBUTE_DUMMY_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.facialAttribute.FacialAttributeDummyNode"

.field private static final HIFILLS_BASE_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.hifills.HifiLlsNodeBase"

.field private static final HIFILLS_DUMMY_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.hifills.HifiLlsDummyNode"

.field private static final HIGH_RES_BASE_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.highRes.HighResNodeBase"

.field private static final HIGH_RES_DUMMY_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.highRes.HighResDummyNode"

.field private static final HUMAN_SEGMENTATION_BASE_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.humanSegmentation.HumanSegmentationNodeBase"

.field private static final HUMAN_TRACKING_BASE_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.humanTracking.HumanTrackingNodeBase"

.field private static final HUMAN_TRACKING_DUMMY_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.humanTracking.HumanTrackingDummyNode"

.field private static final INTELLIGENT_GUIDE_BASE_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.intelligentGuide.IntelligentGuideNodeBase"

.field private static final INTELLIGENT_GUIDE_DUMMY_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.intelligentGuide.IntelligentGuideDummyNode"

.field private static final JPEG_BASE_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.jpeg.JpegNodeBase"

.field private static final LLHDR_BASE_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.llhdr.LlHdrNodeBase"

.field private static final LLHDR_DUMMY_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.llhdr.LlHdrDummyNode"

.field private static final LOCAL_TM_BASE_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.localtm.LocaltmNodeBase"

.field private static final LOCAL_TM_DUMMY_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.localtm.LocaltmDummyNode"

.field private static final MFHDR_BASE_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.mfhdr.MfHdrNodeBase"

.field private static final MFHDR_DUMMY_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.mfhdr.MfHdrDummyNode"

.field private static final MPI_V1_HIFILLS_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.hifills.mpi.v1.MpiHifiLlsNode"

.field private static final MPI_V1_LLHDR_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.llhdr.mpi.v1.MpiLlHdrNode"

.field private static final MPI_V1_MFHDR_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.mfhdr.mpi.v1.MpiMfHdrNode"

.field public static final MPI_V1_MFRP_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.MpiMfrpNode"

.field private static final MPI_V2_SUPER_NIGHT_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.superNight.mpi.v2.MpiSuperNightNode"

.field private static final NODE_VERSION_INFO_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$NodeVersionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final PANORAMA_BASE_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.panorama.PanoramaNodeBase"

.field private static final PANORAMA_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.panorama.PanoramaNode"

.field private static final SALIENCY_FOOD_BASE_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.food.saliencyFood.SaliencyFoodNodeBase"

.field private static final SALIENCY_FOOD_DUMMY_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.food.saliencyFood.SaliencyFoodDummyNode"

.field private static final SCENE_DETECION_BASE_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.sceneDetection.SceneDetectionNodeBase"

.field private static final SCENE_DETECION_DUMMY_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.sceneDetection.SceneDetectionDummyNode"

.field private static final SEC_FACIAL_ATTRIBUTE_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.facialAttribute.samsung.v1.FacialAttributeNode"

.field private static final SEC_V1_CONT_DETECTOR_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.contentsDetector.samsung.v1.SecContDetectorNode"

.field private static final SEC_V1_DEPTH_FOOD_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.food.depthFood.samsung.v1.SecDepthFoodNode"

.field private static final SEC_V1_DUAL_BOKEH_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.dualBokeh.samsung.v1.SecDualBokehNode"

.field private static final SEC_V1_EVENT_DETECTION_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.eventDetection.samsung.v1.SecEventDetectionNode"

.field private static final SEC_V1_HUMAN_SEGMENTATION_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.humanSegmentation.samsung.v1.SecHumanSegmentationNode"

.field private static final SEC_V1_INTELLIGENT_GUIDE_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.intelligentGuide.samsung.v1.IntelligentGuideNode"

.field private static final SEC_V1_LOCAL_TM_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.localtm.samsung.v1.SecLocaltmNode"

.field private static final SEC_V1_SALIENCY_FOOD_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.food.saliencyFood.samsung.v1.SecSaliencyFoodNode"

.field private static final SEC_V1_SINGLE_BOKEH_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.singleBokeh.samsung.v1.SecSingleBokehNode"

.field private static final SEC_V1_SR_DEBLUR_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.srDeblur.samsung.v1.SecSrDeblurNode"

.field private static final SEC_V1_UDC_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.udc.samsung.v1.SecUdcNode"

.field private static final SEC_V1_ULTRA_LENS_DISTORTION_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.ultraLensDistortion.samsung.v1.UltraLensDistortionNode"

.field private static final SEC_V2_EVENT_DETECTION_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.eventDetection.samsung.v2.SecEventDetectionNode"

.field private static final SEC_V2_HUMAN_SEGMENTATION_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.humanSegmentation.samsung.v2.SecHumanSegmentationNode"

.field private static final SEC_V2_SINGLE_BOKEH_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.singleBokeh.samsung.v2.SecSingleBokehNode"

.field private static final SEC_V4_BEAUTY_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.beauty.samsung.v4.SecBeautyNode"

.field private static final SIE_BASE_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.socialImgEnhance.SocialImgEnhanceNodeBase"

.field private static final SIE_DUMMY_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.socialImgEnhance.SocialImgEnhanceDummyNode"

.field private static final SINGLE_BOKEH_BASE_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.singleBokeh.SingleBokehNodeBase"

.field private static final SINGLE_BOKEH_DUMMY_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.singleBokeh.SingleBokehDummyNode"

.field private static final SINGLE_IN_FOCUS_BASE_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.singleInFocus.samsung.SingleInFocusNodeBase"

.field private static final SINGLE_IN_FOCUS_DUMMY_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.singleInFocus.samsung.SingleInFocusDummyNode"

.field private static final SMART_SCAN_BASE_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.smartScan.SmartScanNodeBase"

.field private static final SMART_SCAN_DUMMY_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.smartScan.SmartScanDummyNode"

.field private static final SRCB_V2_SMART_SCAN_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.smartScan.samsung.v2.SrcbSmartScanNode"

.field private static final SRIB_SCENE_DETECION_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.sceneDetection.samsung.v1.SribSceneDetectionNode"

.field private static final SRIB_V1_STAR_EFFECT_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.starEffect.samsung.v1.SribStarEffectNode"

.field private static final SR_DEBLUR_BASE_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.srDeblur.SrDeblurNodeBase"

.field private static final SR_DEBLUR_DUMMY_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.srDeblur.SrDeblurDummyNode"

.field private static final SR_V1_SINGLE_IN_FOCUS_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.singleInFocus.samsung.v1.SrSingleInFocusNode"

.field private static final SSHDR_BASE_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.sshdr.SsHdrNodeBase"

.field private static final SSHDR_DUMMY_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.sshdr.SsHdrDummyNode"

.field private static final STAR_EFFECT_BASE_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.starEffect.StarEffectNodeBase"

.field private static final STAR_EFFECT_DUMMY_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.starEffect.StarEffectDummyNode"

.field public static final SUPER_NIGHT_BASE_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.superNight.SuperNightNodeBase"

.field private static final SUPER_NIGHT_DUMMY_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.superNight.SuperNightDummyNode"

.field public static final SUPER_RESOLUTION_BASE_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.superResolution.SuperResolutionNodeBase"

.field private static final SUPER_RESOLUTION_DUMMY_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.superResolution.SuperResolutionDummyNode"

.field private static final SUPER_RESOLUTION_RAW_BASE_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.superResolutionRaw.SuperResolutionRawNodeBase"

.field private static final SUPER_RESOLUTION_RAW_DUMMY_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.superResolutionRaw.SuperResolutionRawDummyNode"

.field private static final SUPPORT_INCOMPLETE_MERGE_NODE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

.field private static final UDC_BASE_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.udc.samsung.SecUdcNodeBase"

.field private static final UDC_DUMMY_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.udc.samsung.SecUdcDummyNode"

.field private static final ULTRA_LENS_DISTORTION_BASE_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.ultraLensDistortion.UltraLensDistortionNodeBase"

.field private static final ULTRA_LENS_DISTORTION_DUMMY_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.ultraLensDistortion.UltraLensDistortionDummyNode"

.field public static final UW_SUPER_RESOLUTION_BASE_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.uwSuperResolution.UwSuperResolutionNodeBase"

.field private static final UW_SUPER_RESOLUTION_DUMMY_NODE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyraw.core2.node.uwSuperResolution.UwSuperResolutionDummyNode"


# direct methods
.method static constructor <clinit>()V
    .locals 23

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-class v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature;->ENABLE_SELFIE_CORRECTION:Z

    sput-boolean v1, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature;->ENABLE_UWDC_ARC:Z

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$1;

    invoke-direct {v2}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$1;-><init>()V

    sput-object v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature;->BASE_TARGET_NODE_CLASS_MAP:Ljava/util/Map;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$2;

    invoke-direct {v2}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$2;-><init>()V

    sput-object v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature;->SUPPORT_INCOMPLETE_MERGE_NODE_MAP:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature;->NODE_VERSION_INFO_MAP:Ljava/util/Map;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$3;

    invoke-direct {v2}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$3;-><init>()V

    sput-object v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature;->BASE_DEFAULT_NODE_CLASS_MAP:Ljava/util/Map;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$4;

    invoke-direct {v2}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$4;-><init>()V

    sput-object v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature;->BASE_DUMMY_NODE_CLASS_MAP:Ljava/util/Map;

    const-string v2, "SEC_FLOATING_FEATURE_CAMERA_CONFIG_VENDOR_LIB_INFO"

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/core2/util/FloatingFeatureUtils;->getFeatureString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v3, "(\\S+)\\.(\\S+)\\.(\\D+)(\\d+)(?:_(\\d+))?"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    array-length v4, v2

    move v6, v1

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v4, :cond_78

    aget-object v8, v2, v6

    if-nez v7, :cond_0

    invoke-virtual {v3, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    goto :goto_1

    :cond_0
    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    :goto_1
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_77

    :try_start_0
    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x3

    invoke-virtual {v7, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x4

    invoke-virtual {v7, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    const/4 v14, 0x5

    invoke-virtual {v7, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    if-eqz v16, :cond_1

    :try_start_1
    invoke-virtual {v7, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v14, v16

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move/from16 v21, v4

    move-object/from16 v22, v7

    :goto_2
    const/4 v4, 0x0

    goto/16 :goto_51

    :cond_1
    move v14, v1

    :goto_3
    :try_start_2
    sget-object v5, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v9, "%s.%s%d"

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v11, v10, v1

    const/16 v18, 0x1

    aput-object v13, v10, v18

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v17, 0x2

    aput-object v13, v10, v17

    invoke-static {v5, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    if-lez v14, :cond_2

    :try_start_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    :try_start_4
    sget-object v9, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v10, "NODE_VERSION_INFO [%s] %s"

    const/4 v13, 0x2

    new-array v12, v13, [Ljava/lang/Object;

    aput-object v8, v12, v1

    const/4 v13, 0x1

    aput-object v5, v12, v13

    invoke-static {v9, v10, v12}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    new-instance v12, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$NodeVersionInfo;

    invoke-direct {v12, v11, v15, v14}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$NodeVersionInfo;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    sparse-switch v11, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    :try_start_5
    const-string v11, "single_bokeh"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/16 v11, 0xb

    goto/16 :goto_5

    :sswitch_1
    const-string v11, "facial_attribute"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x6

    goto/16 :goto_5

    :sswitch_2
    const-string v11, "image_enhance"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/16 v11, 0x1d

    goto/16 :goto_5

    :sswitch_3
    const-string v11, "udc_restoration"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/16 v11, 0x25

    goto/16 :goto_5

    :sswitch_4
    const-string v11, "star_effect"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/16 v11, 0x14

    goto/16 :goto_5

    :sswitch_5
    const-string v11, "face_recognition"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x4

    goto/16 :goto_5

    :sswitch_6
    const-string v11, "hifills"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/16 v11, 0xf

    goto/16 :goto_5

    :sswitch_7
    const-string v11, "face_alignment"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x2

    goto/16 :goto_5

    :sswitch_8
    const-string v11, "facial_restoration"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x5

    goto/16 :goto_5

    :sswitch_9
    const-string v11, "scene_detection"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/16 v11, 0x10

    goto/16 :goto_5

    :sswitch_a
    const-string v11, "localtm"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/16 v11, 0x15

    goto/16 :goto_5

    :sswitch_b
    const-string v11, "human_tracking_hand"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/16 v11, 0x9

    goto/16 :goto_5

    :sswitch_c
    const-string v11, "human_tracking_face"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/16 v11, 0xa

    goto/16 :goto_5

    :sswitch_d
    const-string v11, "human_tracking_body"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/16 v11, 0x8

    goto/16 :goto_5

    :sswitch_e
    const-string v11, "swldc"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/16 v11, 0x17

    goto/16 :goto_5

    :sswitch_f
    const-string v11, "sshdr"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/16 v11, 0x24

    goto/16 :goto_5

    :sswitch_10
    const-string v11, "mfhdr"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/16 v11, 0xd

    goto/16 :goto_5

    :sswitch_11
    const-string v11, "llhdr"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/16 v11, 0xe

    goto/16 :goto_5

    :sswitch_12
    const-string v11, "food"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/16 v11, 0x12

    goto/16 :goto_5

    :sswitch_13
    const-string v11, "uw_super_resolution"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/16 v11, 0x1a

    goto/16 :goto_5

    :sswitch_14
    const-string v11, "intelligent_guide"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/16 v11, 0x13

    goto/16 :goto_5

    :sswitch_15
    const-string v11, "all_in_focus"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/16 v11, 0x22

    goto/16 :goto_5

    :sswitch_16
    const-string v11, "single_in_focus"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/16 v11, 0x23

    goto/16 :goto_5

    :sswitch_17
    const-string v11, "swuwdc"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/16 v11, 0x1f

    goto/16 :goto_5

    :sswitch_18
    const-string v11, "human_tracking"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x7

    goto/16 :goto_5

    :sswitch_19
    const-string v11, "super_resolution_raw"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/16 v11, 0x1b

    goto/16 :goto_5

    :sswitch_1a
    const-string v11, "srDeblur"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/16 v11, 0x1e

    goto/16 :goto_5

    :sswitch_1b
    const-string v11, "beauty"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x1

    goto/16 :goto_5

    :sswitch_1c
    const-string v11, "event_detection"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/16 v11, 0x11

    goto/16 :goto_5

    :sswitch_1d
    const-string v11, "super_resolution"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/16 v11, 0x19

    goto :goto_5

    :sswitch_1e
    const-string v11, "high_res"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/16 v11, 0x1c

    goto :goto_5

    :sswitch_1f
    const-string v11, "super_night"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/16 v11, 0x18

    goto :goto_5

    :sswitch_20
    const-string v11, "smart_scan"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/16 v11, 0x16

    goto :goto_5

    :sswitch_21
    const-string v11, "face_landmark"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x3

    goto :goto_5

    :sswitch_22
    const-string v11, "dual_bokeh"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/16 v11, 0xc

    goto :goto_5

    :sswitch_23
    const-string v11, "selfie_correction"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    move v11, v1

    goto :goto_5

    :sswitch_24
    const-string v11, "cont_detector"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/16 v11, 0x21

    goto :goto_5

    :sswitch_25
    const-string v11, "human_segmentation"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    if-eqz v11, :cond_3

    const/16 v11, 0x20

    goto :goto_5

    :cond_3
    :goto_4
    const/4 v11, -0x1

    :goto_5
    const-string v14, "mpi.v1"

    const-string v15, "samsung.v1_1"

    const-string v13, "arcsoft.v2_1"

    const-string v1, "samsung.v2"

    move-object/from16 v19, v2

    const-string v2, "arcsoft.v3"

    move-object/from16 v20, v3

    const-string v3, "arcsoft.v2"

    move/from16 v21, v4

    const-string v4, "arcsoft.v1"

    move-object/from16 v22, v7

    const-string v7, "samsung.v1"

    packed-switch v11, :pswitch_data_0

    const/4 v4, 0x0

    goto/16 :goto_4e

    :pswitch_0
    :try_start_6
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x48e2bf11

    if-eq v1, v2, :cond_4

    goto :goto_6

    :cond_4
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v13, 0x0

    goto :goto_7

    :cond_5
    :goto_6
    const/4 v13, -0x1

    :goto_7
    if-eqz v13, :cond_6

    goto/16 :goto_d

    :cond_6
    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.udc.samsung.SecUdcNodeBase"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;

    const-string v3, "com.samsung.android.app.galaxyraw.core2.node.udc.samsung.v1.SecUdcNode"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    const/4 v4, 0x0

    :try_start_7
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :try_start_8
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :pswitch_1
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x48e2bf11

    if-eq v1, v2, :cond_7

    goto :goto_8

    :cond_7
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v1, -0x1

    :goto_9
    if-eqz v1, :cond_9

    goto :goto_a

    :cond_9
    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.singleInFocus.samsung.SingleInFocusNodeBase"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;

    const-string v3, "com.samsung.android.app.galaxyraw.core2.node.singleInFocus.samsung.v1.SrSingleInFocusNode"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    const/4 v7, 0x0

    :try_start_9
    invoke-direct {v2, v3, v7}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    :try_start_a
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_a
    :pswitch_2
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x490b042d

    if-eq v1, v2, :cond_a

    goto :goto_b

    :cond_a
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v13, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v13, -0x1

    :goto_c
    if-eqz v13, :cond_c

    goto :goto_d

    :cond_c
    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.sshdr.SsHdrNodeBase"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;

    const-string v3, "com.samsung.android.app.galaxyraw.core2.node.sshdr.arcsoft.v1.ArcSsHdrNode"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    const/4 v4, 0x0

    :try_start_b
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    :try_start_c
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_d
    const/4 v4, 0x0

    goto/16 :goto_4c

    :catch_1
    move-exception v0

    move-object v1, v0

    goto/16 :goto_2

    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v4, v7

    goto/16 :goto_51

    :pswitch_3
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x490b042d

    if-eq v1, v2, :cond_d

    goto :goto_e

    :cond_d
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v13, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v13, -0x1

    :goto_f
    if-eqz v13, :cond_f

    goto :goto_d

    :cond_f
    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.allInFocus.arcsoft.AllInFocusNodeBase"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;

    const-string v3, "com.samsung.android.app.galaxyraw.core2.node.allInFocus.arcsoft.v1.ArcAllInFocusNode"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    const/4 v4, 0x0

    :try_start_d
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    :try_start_e
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :pswitch_4
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x48e2bf11

    if-eq v1, v2, :cond_10

    goto :goto_10

    :cond_10
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v13, 0x0

    goto :goto_11

    :cond_11
    :goto_10
    const/4 v13, -0x1

    :goto_11
    if-eqz v13, :cond_12

    goto :goto_d

    :cond_12
    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.contentsDetector.ContDetectorNodeBase"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;

    const-string v3, "com.samsung.android.app.galaxyraw.core2.node.contentsDetector.samsung.v1.SecContDetectorNode"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    const/4 v4, 0x0

    :try_start_f
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    :try_start_10
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :pswitch_5
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    goto :goto_12

    :pswitch_6
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_13

    :pswitch_7
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x0

    goto :goto_13

    :cond_13
    :goto_12
    const/4 v1, -0x1

    :goto_13
    if-eqz v1, :cond_15

    const/4 v2, 0x1

    if-eq v1, v2, :cond_14

    goto/16 :goto_d

    :cond_14
    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.humanSegmentation.HumanSegmentationNodeBase"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;

    const-string v3, "com.samsung.android.app.galaxyraw.core2.node.humanSegmentation.samsung.v2.SecHumanSegmentationNode"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1

    const/4 v4, 0x0

    :try_start_11
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5

    :try_start_12
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :cond_15
    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.humanSegmentation.HumanSegmentationNodeBase"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;

    const-string v3, "com.samsung.android.app.galaxyraw.core2.node.humanSegmentation.samsung.v1.SecHumanSegmentationNode"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1

    const/4 v4, 0x0

    :try_start_13
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_5

    :try_start_14
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :pswitch_8
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x490b042d

    if-eq v1, v2, :cond_16

    goto :goto_14

    :cond_16
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v13, 0x0

    goto :goto_15

    :cond_17
    :goto_14
    const/4 v13, -0x1

    :goto_15
    if-eqz v13, :cond_18

    goto/16 :goto_d

    :cond_18
    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature;->ENABLE_UWDC_ARC:Z

    goto/16 :goto_d

    :pswitch_9
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x48e2bf11

    if-eq v1, v2, :cond_19

    goto :goto_16

    :cond_19
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v13, 0x0

    goto :goto_17

    :cond_1a
    :goto_16
    const/4 v13, -0x1

    :goto_17
    if-eqz v13, :cond_1b

    goto/16 :goto_d

    :cond_1b
    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.srDeblur.SrDeblurNodeBase"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;

    const-string v3, "com.samsung.android.app.galaxyraw.core2.node.srDeblur.samsung.v1.SecSrDeblurNode"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1

    const/4 v4, 0x0

    :try_start_15
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_5

    :try_start_16
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :pswitch_a
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x490b042d

    if-eq v1, v2, :cond_1c

    goto :goto_18

    :cond_1c
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v13, 0x0

    goto :goto_19

    :cond_1d
    :goto_18
    const/4 v13, -0x1

    :goto_19
    if-eqz v13, :cond_1e

    goto/16 :goto_d

    :cond_1e
    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.socialImgEnhance.SocialImgEnhanceNodeBase"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;

    const-string v3, "com.samsung.android.app.galaxyraw.core2.node.socialImgEnhance.arcsoft.v1.ArcSocialImgEnhanceNode"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1

    const/4 v4, 0x0

    :try_start_17
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_5

    :try_start_18
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :pswitch_b
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_2

    goto :goto_1a

    :pswitch_c
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v1, 0x1

    goto :goto_1b

    :pswitch_d
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v1, 0x0

    goto :goto_1b

    :cond_1f
    :goto_1a
    const/4 v1, -0x1

    :goto_1b
    if-eqz v1, :cond_21

    const/4 v2, 0x1

    if-eq v1, v2, :cond_20

    goto/16 :goto_d

    :cond_20
    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.highRes.HighResNodeBase"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;

    const-string v3, "com.samsung.android.app.galaxyraw.core2.node.highRes.arcsoft.v2.ArcHighResNode"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_1

    const/4 v4, 0x0

    :try_start_19
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_5

    :try_start_1a
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :cond_21
    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.highRes.HighResNodeBase"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;

    const-string v3, "com.samsung.android.app.galaxyraw.core2.node.highRes.arcsoft.v1.ArcHighResNode"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_1

    const/4 v4, 0x0

    :try_start_1b
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_5

    :try_start_1c
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :pswitch_e
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x490b042d

    if-eq v1, v2, :cond_22

    goto :goto_1c

    :cond_22
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    const/4 v13, 0x0

    goto :goto_1d

    :cond_23
    :goto_1c
    const/4 v13, -0x1

    :goto_1d
    if-eqz v13, :cond_24

    goto/16 :goto_d

    :cond_24
    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.superResolutionRaw.SuperResolutionRawNodeBase"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;

    const-string v3, "com.samsung.android.app.galaxyraw.core2.node.superResolutionRaw.arcsoft.v1.ArcSuperResolutionRawNode"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_1

    const/4 v4, 0x0

    :try_start_1d
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_5

    :try_start_1e
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :pswitch_f
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x490b042d

    if-eq v1, v2, :cond_25

    goto :goto_1e

    :cond_25
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    const/4 v13, 0x0

    goto :goto_1f

    :cond_26
    :goto_1e
    const/4 v13, -0x1

    :goto_1f
    if-eqz v13, :cond_27

    goto/16 :goto_d

    :cond_27
    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.uwSuperResolution.UwSuperResolutionNodeBase"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;

    const-string v3, "com.samsung.android.app.galaxyraw.core2.node.uwSuperResolution.arcsoft.v1.ArcUwSuperResolutionNode"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_1

    const/4 v4, 0x0

    :try_start_1f
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_5

    :try_start_20
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :pswitch_10
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x325abc60

    if-eq v1, v2, :cond_29

    const v2, 0x490b042e    # 569410.9f

    if-eq v1, v2, :cond_28

    goto :goto_20

    :cond_28
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v1, 0x0

    goto :goto_21

    :cond_29
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v1, 0x1

    goto :goto_21

    :cond_2a
    :goto_20
    const/4 v1, -0x1

    :goto_21
    if-eqz v1, :cond_2b

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2b

    goto/16 :goto_d

    :cond_2b
    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.superResolution.SuperResolutionNodeBase"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;

    const-string v3, "com.samsung.android.app.galaxyraw.core2.node.superResolution.arcsoft.v2.ArcSuperResolutionNode"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_1

    const/4 v4, 0x0

    :try_start_21
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_5

    :try_start_22
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature;->SUPPORT_INCOMPLETE_MERGE_NODE_MAP:Ljava/util/Map;

    const-string v2, "com.samsung.android.app.galaxyraw.core2.node.superResolution.SuperResolutionNodeBase"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :pswitch_11
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v3, -0x3fa505bc

    if-eq v1, v3, :cond_2d

    const v3, 0x490b042f

    if-eq v1, v3, :cond_2c

    goto :goto_22

    :cond_2c
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v1, 0x0

    goto :goto_23

    :cond_2d
    const-string v1, "mpi.v2"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_1

    if-eqz v1, :cond_2e

    const/4 v1, 0x1

    goto :goto_23

    :cond_2e
    :goto_22
    const/4 v1, -0x1

    :goto_23
    const-string v2, "com.samsung.android.app.galaxyraw.core2.node.superNight.SuperNightNodeBase"

    if-eqz v1, :cond_30

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2f

    goto/16 :goto_d

    :cond_2f
    :try_start_23
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;

    const-string v4, "com.samsung.android.app.galaxyraw.core2.node.superNight.mpi.v2.MpiSuperNightNode"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_1

    const/4 v5, 0x0

    :try_start_24
    invoke-direct {v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_3

    :try_start_25
    invoke-interface {v10, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature;->SUPPORT_INCOMPLETE_MERGE_NODE_MAP:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :catch_3
    move-exception v0

    move-object v1, v0

    move-object v4, v5

    goto/16 :goto_51

    :cond_30
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;

    const-string v3, "com.samsung.android.app.galaxyraw.core2.node.superNight.arcsoft.v3.ArcSuperNightNode"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_1

    const/4 v4, 0x0

    :try_start_26
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_5

    :try_start_27
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :pswitch_12
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x48e2bf11

    if-eq v1, v2, :cond_31

    goto :goto_24

    :cond_31
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    const/4 v13, 0x0

    goto :goto_25

    :cond_32
    :goto_24
    const/4 v13, -0x1

    :goto_25
    if-eqz v13, :cond_33

    goto/16 :goto_d

    :cond_33
    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.ultraLensDistortion.UltraLensDistortionNodeBase"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;

    const-string v3, "com.samsung.android.app.galaxyraw.core2.node.ultraLensDistortion.samsung.v1.UltraLensDistortionNode"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_1

    const/4 v4, 0x0

    :try_start_28
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_5

    :try_start_29
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :pswitch_13
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x48e2bf10

    if-eq v2, v3, :cond_34

    goto :goto_26

    :cond_34
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/4 v13, 0x0

    goto :goto_27

    :cond_35
    :goto_26
    const/4 v13, -0x1

    :goto_27
    if-eqz v13, :cond_36

    goto/16 :goto_d

    :cond_36
    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.smartScan.SmartScanNodeBase"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;

    const-string v3, "com.samsung.android.app.galaxyraw.core2.node.smartScan.samsung.v2.SrcbSmartScanNode"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_1

    const/4 v4, 0x0

    :try_start_2a
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_5

    :try_start_2b
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :pswitch_14
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x48e2bf11

    if-eq v1, v2, :cond_38

    const v2, 0x64d0cce1

    if-eq v1, v2, :cond_37

    goto :goto_28

    :cond_37
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    const/4 v1, 0x1

    goto :goto_29

    :cond_38
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    const/4 v1, 0x0

    goto :goto_29

    :cond_39
    :goto_28
    const/4 v1, -0x1

    :goto_29
    if-eqz v1, :cond_3a

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3a

    goto/16 :goto_d

    :cond_3a
    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.localtm.LocaltmNodeBase"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;

    const-string v3, "com.samsung.android.app.galaxyraw.core2.node.localtm.samsung.v1.SecLocaltmNode"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_1

    const/4 v4, 0x0

    :try_start_2c
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_5

    :try_start_2d
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :pswitch_15
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x48e2bf11

    if-eq v1, v2, :cond_3b

    goto :goto_2a

    :cond_3b
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    const/4 v13, 0x0

    goto :goto_2b

    :cond_3c
    :goto_2a
    const/4 v13, -0x1

    :goto_2b
    if-eqz v13, :cond_3d

    goto/16 :goto_d

    :cond_3d
    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.starEffect.StarEffectNodeBase"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;

    const-string v3, "com.samsung.android.app.galaxyraw.core2.node.starEffect.samsung.v1.SribStarEffectNode"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_1

    const/4 v4, 0x0

    :try_start_2e
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_5

    :try_start_2f
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :pswitch_16
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x48e2bf11

    if-eq v1, v2, :cond_3e

    goto :goto_2c

    :cond_3e
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    const/4 v13, 0x0

    goto :goto_2d

    :cond_3f
    :goto_2c
    const/4 v13, -0x1

    :goto_2d
    if-eqz v13, :cond_40

    goto/16 :goto_d

    :cond_40
    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.intelligentGuide.IntelligentGuideNodeBase"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;

    const-string v3, "com.samsung.android.app.galaxyraw.core2.node.intelligentGuide.samsung.v1.IntelligentGuideNode"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_1

    const/4 v4, 0x0

    :try_start_30
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_5

    :try_start_31
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :pswitch_17
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x48e2bf11

    if-eq v1, v2, :cond_41

    goto :goto_2e

    :cond_41
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    const/4 v13, 0x0

    goto :goto_2f

    :cond_42
    :goto_2e
    const/4 v13, -0x1

    :goto_2f
    if-eqz v13, :cond_43

    goto/16 :goto_d

    :cond_43
    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.food.saliencyFood.SaliencyFoodNodeBase"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;

    const-string v3, "com.samsung.android.app.galaxyraw.core2.node.food.saliencyFood.samsung.v1.SecSaliencyFoodNode"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_1

    const/4 v4, 0x0

    :try_start_32
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_5

    :try_start_33
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.food.depthFood.DepthFoodNodeBase"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;

    const-string v3, "com.samsung.android.app.galaxyraw.core2.node.food.depthFood.samsung.v1.SecDepthFoodNode"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_1

    const/4 v4, 0x0

    :try_start_34
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_5

    :try_start_35
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :pswitch_18
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_3

    goto :goto_30

    :pswitch_19
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    const/4 v1, 0x1

    goto :goto_31

    :pswitch_1a
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    const/4 v1, 0x0

    goto :goto_31

    :cond_44
    :goto_30
    const/4 v1, -0x1

    :goto_31
    if-eqz v1, :cond_46

    const/4 v2, 0x1

    if-eq v1, v2, :cond_45

    goto/16 :goto_d

    :cond_45
    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.eventDetection.EventDetectionNodeBase"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;

    const-string v3, "com.samsung.android.app.galaxyraw.core2.node.eventDetection.samsung.v2.SecEventDetectionNode"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_1

    const/4 v4, 0x0

    :try_start_36
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_5

    :try_start_37
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :cond_46
    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.eventDetection.EventDetectionNodeBase"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;

    const-string v3, "com.samsung.android.app.galaxyraw.core2.node.eventDetection.samsung.v1.SecEventDetectionNode"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_1

    const/4 v4, 0x0

    :try_start_38
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_5

    :try_start_39
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :pswitch_1b
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x48e2bf11

    if-eq v1, v2, :cond_47

    goto :goto_32

    :cond_47
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    const/4 v13, 0x0

    goto :goto_33

    :cond_48
    :goto_32
    const/4 v13, -0x1

    :goto_33
    if-eqz v13, :cond_49

    goto/16 :goto_d

    :cond_49
    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.sceneDetection.SceneDetectionNodeBase"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;

    const-string v3, "com.samsung.android.app.galaxyraw.core2.node.sceneDetection.samsung.v1.SribSceneDetectionNode"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_1

    const/4 v4, 0x0

    :try_start_3a
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_5

    :try_start_3b
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :pswitch_1c
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x3fa505bd

    if-eq v1, v2, :cond_4a

    goto :goto_34

    :cond_4a
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    const/4 v13, 0x0

    goto :goto_35

    :cond_4b
    :goto_34
    const/4 v13, -0x1

    :goto_35
    if-eqz v13, :cond_4c

    goto/16 :goto_d

    :cond_4c
    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.hifills.HifiLlsNodeBase"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;

    const-string v3, "com.samsung.android.app.galaxyraw.core2.node.hifills.mpi.v1.MpiHifiLlsNode"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_1

    const/4 v4, 0x0

    :try_start_3c
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_5

    :try_start_3d
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :pswitch_1d
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v7, -0x3fa505bd

    if-eq v1, v7, :cond_4d

    packed-switch v1, :pswitch_data_4

    goto :goto_36

    :pswitch_1e
    const-string v1, "arcsoft.v4"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    const/4 v1, 0x3

    goto :goto_37

    :pswitch_1f
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    const/4 v1, 0x2

    goto :goto_37

    :pswitch_20
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    const/4 v1, 0x1

    goto :goto_37

    :pswitch_21
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    const/4 v1, 0x0

    goto :goto_37

    :cond_4d
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3d} :catch_1

    if-eqz v1, :cond_4e

    const/4 v1, 0x4

    goto :goto_37

    :cond_4e
    :goto_36
    const/4 v1, -0x1

    :goto_37
    const-string v2, "com.samsung.android.app.galaxyraw.core2.node.llhdr.LlHdrNodeBase"

    if-eqz v1, :cond_53

    const/4 v3, 0x1

    if-eq v1, v3, :cond_52

    const/4 v3, 0x2

    if-eq v1, v3, :cond_51

    const/4 v3, 0x3

    if-eq v1, v3, :cond_50

    const/4 v3, 0x4

    if-eq v1, v3, :cond_4f

    goto/16 :goto_d

    :cond_4f
    :try_start_3e
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;

    const-string v3, "com.samsung.android.app.galaxyraw.core2.node.llhdr.mpi.v1.MpiLlHdrNode"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_1

    const/4 v4, 0x0

    :try_start_3f
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_5

    :try_start_40
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :cond_50
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;

    const-string v3, "com.samsung.android.app.galaxyraw.core2.node.llhdr.arcsoft.v4.ArcLlHdrNode"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_1

    const/4 v4, 0x0

    :try_start_41
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_41} :catch_5

    :try_start_42
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :cond_51
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;

    const-string v3, "com.samsung.android.app.galaxyraw.core2.node.llhdr.arcsoft.v3.ArcLlHdrNode"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_42} :catch_1

    const/4 v4, 0x0

    :try_start_43
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_43} :catch_5

    :try_start_44
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :cond_52
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;

    const-string v3, "com.samsung.android.app.galaxyraw.core2.node.llhdr.arcsoft.v2.ArcLlHdrNode"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_44} :catch_1

    const/4 v4, 0x0

    :try_start_45
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_45} :catch_5

    :try_start_46
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :cond_53
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;

    const-string v3, "com.samsung.android.app.galaxyraw.core2.node.llhdr.arcsoft.v1.ArcLlHdrNode"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_46} :catch_1

    const/4 v4, 0x0

    :try_start_47
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_47} :catch_5

    :try_start_48
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :pswitch_22
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v7, -0x3fa505bd

    if-eq v1, v7, :cond_54

    packed-switch v1, :pswitch_data_5

    goto :goto_38

    :pswitch_23
    const-string v1, "arcsoft.v4"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    const/4 v1, 0x3

    goto :goto_39

    :pswitch_24
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    const/4 v1, 0x2

    goto :goto_39

    :pswitch_25
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    const/4 v1, 0x1

    goto :goto_39

    :pswitch_26
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    const/4 v1, 0x0

    goto :goto_39

    :cond_54
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_48} :catch_1

    if-eqz v1, :cond_55

    const/4 v1, 0x4

    goto :goto_39

    :cond_55
    :goto_38
    const/4 v1, -0x1

    :goto_39
    const-string v2, "com.samsung.android.app.galaxyraw.core2.node.mfhdr.MfHdrNodeBase"

    if-eqz v1, :cond_5a

    const/4 v3, 0x1

    if-eq v1, v3, :cond_59

    const/4 v3, 0x2

    if-eq v1, v3, :cond_58

    const/4 v3, 0x3

    if-eq v1, v3, :cond_57

    const/4 v3, 0x4

    if-eq v1, v3, :cond_56

    goto/16 :goto_d

    :cond_56
    :try_start_49
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;

    const-string v3, "com.samsung.android.app.galaxyraw.core2.node.mfhdr.mpi.v1.MpiMfHdrNode"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_49} :catch_1

    const/4 v4, 0x0

    :try_start_4a
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4a} :catch_5

    :try_start_4b
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :cond_57
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;

    const-string v3, "com.samsung.android.app.galaxyraw.core2.node.mfhdr.arcsoft.v4.ArcMfHdrNode"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4b} :catch_1

    const/4 v4, 0x0

    :try_start_4c
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4c} :catch_5

    :try_start_4d
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :cond_58
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;

    const-string v3, "com.samsung.android.app.galaxyraw.core2.node.mfhdr.arcsoft.v3.ArcMfHdrNode"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_4d} :catch_1

    const/4 v4, 0x0

    :try_start_4e
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_4e} :catch_5

    :try_start_4f
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :cond_59
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;

    const-string v3, "com.samsung.android.app.galaxyraw.core2.node.mfhdr.arcsoft.v2.ArcMfHdrNode"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_4f} :catch_1

    const/4 v4, 0x0

    :try_start_50
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_50} :catch_5

    :try_start_51
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :cond_5a
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;

    const-string v3, "com.samsung.android.app.galaxyraw.core2.node.mfhdr.arcsoft.v1.ArcMfHdrNode"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_51} :catch_1

    const/4 v4, 0x0

    :try_start_52
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_52} :catch_5

    :try_start_53
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :pswitch_27
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x48e2bf11

    if-eq v1, v2, :cond_5c

    const v2, 0x64d0cce1

    if-eq v1, v2, :cond_5b

    goto :goto_3a

    :cond_5b
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    const/4 v1, 0x1

    goto :goto_3b

    :cond_5c
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    const/4 v1, 0x0

    goto :goto_3b

    :cond_5d
    :goto_3a
    const/4 v1, -0x1

    :goto_3b
    if-eqz v1, :cond_5e

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5e

    goto/16 :goto_d

    :cond_5e
    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.dualBokeh.DualBokehNodeBase"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;

    const-string v3, "com.samsung.android.app.galaxyraw.core2.node.dualBokeh.samsung.v1.SecDualBokehNode"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_53} :catch_1

    const/4 v4, 0x0

    :try_start_54
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_54} :catch_5

    :try_start_55
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :pswitch_28
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    goto :goto_3c

    :sswitch_26
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    const/4 v1, 0x1

    goto :goto_3d

    :sswitch_27
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    const/4 v1, 0x2

    goto :goto_3d

    :sswitch_28
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    const/4 v1, 0x0

    goto :goto_3d

    :cond_5f
    :goto_3c
    const/4 v1, -0x1

    :goto_3d
    if-eqz v1, :cond_61

    const/4 v2, 0x1

    if-eq v1, v2, :cond_61

    const/4 v2, 0x2

    if-eq v1, v2, :cond_60

    goto/16 :goto_d

    :cond_60
    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.singleBokeh.SingleBokehNodeBase"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;

    const-string v3, "com.samsung.android.app.galaxyraw.core2.node.singleBokeh.samsung.v2.SecSingleBokehNode"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_55} :catch_1

    const/4 v4, 0x0

    :try_start_56
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_56} :catch_5

    :try_start_57
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :cond_61
    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.singleBokeh.SingleBokehNodeBase"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;

    const-string v3, "com.samsung.android.app.galaxyraw.core2.node.singleBokeh.samsung.v1.SecSingleBokehNode"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_57} :catch_1

    const/4 v4, 0x0

    :try_start_58
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_58} :catch_5

    :try_start_59
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :pswitch_29
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_2

    goto :goto_3e

    :sswitch_29
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    const/4 v1, 0x2

    goto :goto_3f

    :sswitch_2a
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    const/4 v1, 0x0

    goto :goto_3f

    :sswitch_2b
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    const/4 v1, 0x1

    goto :goto_3f

    :cond_62
    :goto_3e
    const/4 v1, -0x1

    :goto_3f
    if-eqz v1, :cond_64

    const/4 v2, 0x1

    if-eq v1, v2, :cond_64

    const/4 v2, 0x2

    if-eq v1, v2, :cond_63

    goto/16 :goto_d

    :cond_63
    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.humanTracking.HumanTrackingNodeBase"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;

    const-string v3, "com.samsung.android.app.galaxyraw.core2.node.humanTracking.arcsoft.v3.ArcHumanTrackingNode"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_59} :catch_1

    const/4 v4, 0x0

    :try_start_5a
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5a} :catch_5

    :try_start_5b
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :cond_64
    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.humanTracking.HumanTrackingNodeBase"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;

    const-string v3, "com.samsung.android.app.galaxyraw.core2.node.humanTracking.arcsoft.v2.ArcHumanTrackingNode"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5b} :catch_1

    const/4 v4, 0x0

    :try_start_5c
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5c} :catch_5

    :try_start_5d
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :pswitch_2a
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x48e2bf11

    if-eq v1, v2, :cond_65

    goto :goto_40

    :cond_65
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    const/4 v13, 0x0

    goto :goto_41

    :cond_66
    :goto_40
    const/4 v13, -0x1

    :goto_41
    if-eqz v13, :cond_67

    goto/16 :goto_d

    :cond_67
    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.facialAttribute.FacialAttributeNodeBase"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;

    const-string v3, "com.samsung.android.app.galaxyraw.core2.node.facialAttribute.samsung.v1.FacialAttributeNode"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_5d} :catch_1

    const/4 v4, 0x0

    :try_start_5e
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_5e} :catch_5

    :try_start_5f
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :pswitch_2b
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x490b042d

    if-eq v1, v2, :cond_68

    goto :goto_42

    :cond_68
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    const/4 v13, 0x0

    goto :goto_43

    :cond_69
    :goto_42
    const/4 v13, -0x1

    :goto_43
    if-eqz v13, :cond_6a

    goto/16 :goto_d

    :cond_6a
    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.faceRestoration.FaceRestorationNodeBase"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;

    const-string v3, "com.samsung.android.app.galaxyraw.core2.node.faceRestoration.arcsoft.v1.ArcFaceRestorationNode"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_5f} :catch_1

    const/4 v4, 0x0

    :try_start_60
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_60} :catch_5

    :try_start_61
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :pswitch_2c
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x490b042d

    if-eq v1, v2, :cond_6b

    goto :goto_44

    :cond_6b
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    const/4 v13, 0x0

    goto :goto_45

    :cond_6c
    :goto_44
    const/4 v13, -0x1

    :goto_45
    if-eqz v13, :cond_6d

    goto/16 :goto_d

    :cond_6d
    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.faceRecognition.FaceRecognitionNodeBase"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;

    const-string v3, "com.samsung.android.app.galaxyraw.core2.node.faceRecognition.arcsoft.v1.ArcFaceRecognitionNode"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_61} :catch_1

    const/4 v4, 0x0

    :try_start_62
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_62} :catch_5

    :try_start_63
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :pswitch_2d
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_3

    goto :goto_46

    :sswitch_2c
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6e

    const/4 v1, 0x1

    goto :goto_47

    :sswitch_2d
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6e

    const/4 v1, 0x0

    goto :goto_47

    :sswitch_2e
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6e

    const/4 v1, 0x2

    goto :goto_47

    :cond_6e
    :goto_46
    const/4 v1, -0x1

    :goto_47
    if-eqz v1, :cond_70

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6f

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6f

    goto/16 :goto_d

    :cond_6f
    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.faceLandmark.FaceLandmarkNodeBase"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;

    const-string v3, "com.samsung.android.app.galaxyraw.core2.node.faceLandmark.arcsoft.v2.ArcFaceLandmarkNode"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_63} :catch_1

    const/4 v4, 0x0

    :try_start_64
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_64} :catch_5

    :try_start_65
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :cond_70
    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.faceLandmark.FaceLandmarkNodeBase"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;

    const-string v3, "com.samsung.android.app.galaxyraw.core2.node.faceLandmark.arcsoft.v1.ArcFaceLandmarkNode"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_65} :catch_1

    const/4 v4, 0x0

    :try_start_66
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_66} :catch_5

    :try_start_67
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :pswitch_2e
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_4

    goto :goto_48

    :sswitch_2f
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    const/4 v1, 0x0

    goto :goto_49

    :sswitch_30
    const-string v1, "arcsoft.v1_2"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    const/4 v1, 0x2

    goto :goto_49

    :sswitch_31
    const-string v1, "arcsoft.v1_1"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    const/4 v1, 0x1

    goto :goto_49

    :cond_71
    :goto_48
    const/4 v1, -0x1

    :goto_49
    if-eqz v1, :cond_72

    const/4 v2, 0x1

    if-eq v1, v2, :cond_72

    const/4 v2, 0x2

    if-eq v1, v2, :cond_72

    goto/16 :goto_d

    :cond_72
    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.faceAlignment.FaceAlignmentNodeBase"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;

    const-string v3, "com.samsung.android.app.galaxyraw.core2.node.faceAlignment.arcsoft.v1.ArcFaceAlignmentNode"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_67} :catch_1

    const/4 v4, 0x0

    :try_start_68
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_68} :catch_5

    :try_start_69
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_69} :catch_1

    goto/16 :goto_d

    :pswitch_2f
    :try_start_6a
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x48e2bf0e

    if-eq v1, v2, :cond_73

    goto :goto_4a

    :cond_73
    const-string v1, "samsung.v4"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    const/4 v13, 0x0

    goto :goto_4b

    :cond_74
    :goto_4a
    const/4 v13, -0x1

    :goto_4b
    if-eqz v13, :cond_75

    goto/16 :goto_d

    :cond_75
    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.beauty.BeautyNodeBase"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;

    const-string v3, "com.samsung.android.app.galaxyraw.core2.node.beauty.samsung.v4.SecBeautyNode"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6a} :catch_4

    const/4 v4, 0x0

    :try_start_6b
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4c

    :catch_4
    move-exception v0

    goto :goto_4f

    :pswitch_30
    const/4 v1, 0x1

    const/4 v4, 0x0

    sput-boolean v1, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature;->ENABLE_SELFIE_CORRECTION:Z

    :goto_4c
    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature;->BASE_TARGET_NODE_CLASS_MAP:Ljava/util/Map;

    invoke-interface {v1, v10}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_76

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature;->NODE_VERSION_INFO_MAP:Ljava/util/Map;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;->primary:Ljava/lang/Class;

    invoke-interface {v3, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4d

    :catch_5
    move-exception v0

    goto :goto_50

    :goto_4e
    const-string v1, "Fail to map BASE/TARGET NODE CLASS - can\'t find class for [%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    const/4 v3, 0x1

    aput-object v5, v2, v3

    invoke-static {v9, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6b} :catch_5

    goto :goto_52

    :catch_6
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move/from16 v21, v4

    move-object/from16 v22, v7

    :goto_4f
    const/4 v4, 0x0

    :goto_50
    move-object v1, v0

    :goto_51
    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v3, "Fail to map BASE/TARGET NODE CLASS - %s"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_76
    :goto_52
    const/4 v3, 0x0

    goto :goto_53

    :cond_77
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move/from16 v21, v4

    move-object/from16 v22, v7

    const/4 v4, 0x0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    const-string v5, "Fail to map BASE/TARGET NODE CLASS - invalid feature: %s"

    invoke-static {v1, v5, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_53
    add-int/lit8 v6, v6, 0x1

    move v1, v3

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move/from16 v4, v21

    move-object/from16 v7, v22

    goto/16 :goto_0

    :cond_78
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ff3c28c -> :sswitch_25
        -0x7de16dcd -> :sswitch_24
        -0x7ba1356b -> :sswitch_23
        -0x7ae09ea2 -> :sswitch_22
        -0x73072126 -> :sswitch_21
        -0x6ba3e0cd -> :sswitch_20
        -0x670991ac -> :sswitch_1f
        -0x646ddb7d -> :sswitch_1e
        -0x60dc8c10 -> :sswitch_1d
        -0x5863c0e0 -> :sswitch_1c
        -0x5307ef84 -> :sswitch_1b
        -0x4d8b7459 -> :sswitch_1a
        -0x486b1ca7 -> :sswitch_19
        -0x420b0e77 -> :sswitch_18
        -0x34fec8fb -> :sswitch_17
        -0x34a06cab -> :sswitch_16
        -0x329d6de4 -> :sswitch_15
        -0x2e1508cc -> :sswitch_14
        -0x13246013 -> :sswitch_13
        0x300c5e -> :sswitch_12
        0x6249576 -> :sswitch_11
        0x62ff2bd -> :sswitch_10
        0x68a6896 -> :sswitch_f
        0x68c4907 -> :sswitch_e
        0x9aa8e98 -> :sswitch_d
        0x9ac2b53 -> :sswitch_c
        0x9ad1565 -> :sswitch_b
        0x142bbf24 -> :sswitch_a
        0x14bf9e92 -> :sswitch_9
        0x1ba1eb2b -> :sswitch_8
        0x2691e281 -> :sswitch_7
        0x3683a6ef -> :sswitch_6
        0x53e410d5 -> :sswitch_5
        0x57ce501e -> :sswitch_4
        0x77030493 -> :sswitch_3
        0x7a9687ca -> :sswitch_2
        0x7b980469 -> :sswitch_1
        0x7f3ba42a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_22
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x48e2bf11
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x490b042d
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch -0x48e2bf11
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x490b042d
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x490b042d
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x48e2bf11 -> :sswitch_28
        -0x48e2bf10 -> :sswitch_27
        0x64d0cce1 -> :sswitch_26
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x325abc60 -> :sswitch_2b
        0x490b042e -> :sswitch_2a
        0x490b042f -> :sswitch_29
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x325abc60 -> :sswitch_2e
        0x490b042d -> :sswitch_2d
        0x490b042e -> :sswitch_2c
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        0x325ab89f -> :sswitch_31
        0x325ab8a0 -> :sswitch_30
        0x490b042d -> :sswitch_2f
    .end sparse-switch
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    return-object v0
.end method

.method public static getDefaultNodeClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nodeClass"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature;->BASE_DEFAULT_NODE_CLASS_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    return-object p0
.end method

.method public static getDummyNodeClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nodeClass"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature;->BASE_DUMMY_NODE_CLASS_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    return-object p0
.end method

.method public static getNodeVersionInfo(Ljava/lang/Class;)Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$NodeVersionInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nodeClass"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature;->NODE_VERSION_INFO_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$NodeVersionInfo;

    return-object p0
.end method

.method public static getTargetNodeClasses(Ljava/lang/Class;)Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "baseNodeClass"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature;->BASE_TARGET_NODE_CLASS_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;

    return-object p0
.end method

.method public static isSupportIncompleteMerge(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "baseNodeClass"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature;->SUPPORT_INCOMPLETE_MERGE_NODE_MAP:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
