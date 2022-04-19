.class Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$4;
.super Ljava/util/HashMap;
.source "NodeFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Class;",
        "Ljava/lang/Class;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Error;
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string v0, "com.samsung.android.app.galaxyraw.core2.node.beauty.BeautyNodeBase"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.beauty.BeautyDummyNode"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.samsung.android.app.galaxyraw.core2.node.humanTracking.HumanTrackingNodeBase"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.humanTracking.HumanTrackingDummyNode"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.samsung.android.app.galaxyraw.core2.node.facialAttribute.FacialAttributeNodeBase"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.facialAttribute.FacialAttributeDummyNode"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.samsung.android.app.galaxyraw.core2.node.faceAlignment.FaceAlignmentNodeBase"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.faceAlignment.FaceAlignmentDummyNode"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.samsung.android.app.galaxyraw.core2.node.faceLandmark.FaceLandmarkNodeBase"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.faceLandmark.FaceLandmarkDummyNode"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.samsung.android.app.galaxyraw.core2.node.faceRecognition.FaceRecognitionNodeBase"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.faceRecognition.FaceRecognitionDummyNode"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.samsung.android.app.galaxyraw.core2.node.faceRestoration.FaceRestorationNodeBase"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.faceRestoration.FaceRestorationDummyNode"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.samsung.android.app.galaxyraw.core2.node.mfhdr.MfHdrNodeBase"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.mfhdr.MfHdrDummyNode"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.samsung.android.app.galaxyraw.core2.node.llhdr.LlHdrNodeBase"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.llhdr.LlHdrDummyNode"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.samsung.android.app.galaxyraw.core2.node.hifills.HifiLlsNodeBase"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.hifills.HifiLlsDummyNode"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.samsung.android.app.galaxyraw.core2.node.sceneDetection.SceneDetectionNodeBase"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.sceneDetection.SceneDetectionDummyNode"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.samsung.android.app.galaxyraw.core2.node.eventDetection.EventDetectionNodeBase"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.eventDetection.EventDetectionDummyNode"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.samsung.android.app.galaxyraw.core2.node.food.saliencyFood.SaliencyFoodNodeBase"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.food.saliencyFood.SaliencyFoodDummyNode"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.samsung.android.app.galaxyraw.core2.node.food.depthFood.DepthFoodNodeBase"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.food.depthFood.DepthFoodDummyNode"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.samsung.android.app.galaxyraw.core2.node.intelligentGuide.IntelligentGuideNodeBase"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.intelligentGuide.IntelligentGuideDummyNode"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.samsung.android.app.galaxyraw.core2.node.singleBokeh.SingleBokehNodeBase"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.singleBokeh.SingleBokehDummyNode"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.samsung.android.app.galaxyraw.core2.node.dualBokeh.DualBokehNodeBase"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.dualBokeh.DualBokehDummyNode"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.samsung.android.app.galaxyraw.core2.node.starEffect.StarEffectNodeBase"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.starEffect.StarEffectDummyNode"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.samsung.android.app.galaxyraw.core2.node.localtm.LocaltmNodeBase"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.localtm.LocaltmDummyNode"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.samsung.android.app.galaxyraw.core2.node.smartScan.SmartScanNodeBase"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.smartScan.SmartScanDummyNode"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.samsung.android.app.galaxyraw.core2.node.ultraLensDistortion.UltraLensDistortionNodeBase"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.ultraLensDistortion.UltraLensDistortionDummyNode"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.samsung.android.app.galaxyraw.core2.node.superNight.SuperNightNodeBase"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.superNight.SuperNightDummyNode"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.samsung.android.app.galaxyraw.core2.node.superResolution.SuperResolutionNodeBase"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.superResolution.SuperResolutionDummyNode"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.samsung.android.app.galaxyraw.core2.node.uwSuperResolution.UwSuperResolutionNodeBase"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.uwSuperResolution.UwSuperResolutionDummyNode"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.samsung.android.app.galaxyraw.core2.node.superResolutionRaw.SuperResolutionRawNodeBase"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.superResolutionRaw.SuperResolutionRawDummyNode"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.samsung.android.app.galaxyraw.core2.node.highRes.HighResNodeBase"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.highRes.HighResDummyNode"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.samsung.android.app.galaxyraw.core2.node.socialImgEnhance.SocialImgEnhanceNodeBase"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.socialImgEnhance.SocialImgEnhanceDummyNode"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.samsung.android.app.galaxyraw.core2.node.srDeblur.SrDeblurNodeBase"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.srDeblur.SrDeblurDummyNode"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.samsung.android.app.galaxyraw.core2.node.contentsDetector.ContDetectorNodeBase"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.contentsDetector.ContDetectorDummyNode"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.samsung.android.app.galaxyraw.core2.node.allInFocus.arcsoft.AllInFocusNodeBase"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.allInFocus.arcsoft.AllInFocusDummyNode"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.samsung.android.app.galaxyraw.core2.node.singleInFocus.samsung.SingleInFocusNodeBase"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.singleInFocus.samsung.SingleInFocusDummyNode"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.samsung.android.app.galaxyraw.core2.node.sshdr.SsHdrNodeBase"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.sshdr.SsHdrDummyNode"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.samsung.android.app.galaxyraw.core2.node.udc.samsung.SecUdcNodeBase"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.samsung.android.app.galaxyraw.core2.node.udc.samsung.SecUdcDummyNode"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature;->access$000()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    const-string v1, "Fail to map BASE/DUMMY NODE CLASS - %s"

    invoke-static {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
