.class public Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;
.super Ljava/lang/Object;
.source "DngUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CamCapability"
.end annotation


# instance fields
.field private blackLevelPattern:Landroid/hardware/camera2/params/BlackLevelPattern;

.field private calibrationTransform1:Landroid/hardware/camera2/params/ColorSpaceTransform;

.field private calibrationTransform2:Landroid/hardware/camera2/params/ColorSpaceTransform;

.field private colorFilterArrangement:Ljava/lang/Integer;

.field private colorTransform1:Landroid/hardware/camera2/params/ColorSpaceTransform;

.field private colorTransform2:Landroid/hardware/camera2/params/ColorSpaceTransform;

.field private forwardMatrix1:Landroid/hardware/camera2/params/ColorSpaceTransform;

.field private forwardMatrix2:Landroid/hardware/camera2/params/ColorSpaceTransform;

.field private referenceIlluminant1:Ljava/lang/Integer;

.field private referenceIlluminant2:Ljava/lang/Byte;

.field private whiteLevel:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/params/BlackLevelPattern;Ljava/lang/Integer;Landroid/hardware/camera2/params/ColorSpaceTransform;Landroid/hardware/camera2/params/ColorSpaceTransform;Landroid/hardware/camera2/params/ColorSpaceTransform;Landroid/hardware/camera2/params/ColorSpaceTransform;Ljava/lang/Integer;Ljava/lang/Byte;Landroid/hardware/camera2/params/ColorSpaceTransform;Landroid/hardware/camera2/params/ColorSpaceTransform;Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "blackLevelPattern",
            "whiteLevel",
            "colorTransform1",
            "colorTransform2",
            "calibrationTransform1",
            "calibrationTransform2",
            "referenceIlluminant1",
            "referenceIlluminant2",
            "forwardMatrix1",
            "forwardMatrix2",
            "colorFilterArrangement"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;->blackLevelPattern:Landroid/hardware/camera2/params/BlackLevelPattern;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;->whiteLevel:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;->colorTransform1:Landroid/hardware/camera2/params/ColorSpaceTransform;

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;->colorTransform2:Landroid/hardware/camera2/params/ColorSpaceTransform;

    iput-object p5, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;->calibrationTransform1:Landroid/hardware/camera2/params/ColorSpaceTransform;

    iput-object p6, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;->calibrationTransform2:Landroid/hardware/camera2/params/ColorSpaceTransform;

    iput-object p7, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;->referenceIlluminant1:Ljava/lang/Integer;

    iput-object p8, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;->referenceIlluminant2:Ljava/lang/Byte;

    iput-object p9, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;->forwardMatrix1:Landroid/hardware/camera2/params/ColorSpaceTransform;

    iput-object p10, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;->forwardMatrix2:Landroid/hardware/camera2/params/ColorSpaceTransform;

    iput-object p11, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;->colorFilterArrangement:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getBlackLevelPattern()Landroid/hardware/camera2/params/BlackLevelPattern;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;->blackLevelPattern:Landroid/hardware/camera2/params/BlackLevelPattern;

    return-object p0
.end method

.method public getCalibrationTransform1()Landroid/hardware/camera2/params/ColorSpaceTransform;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;->calibrationTransform1:Landroid/hardware/camera2/params/ColorSpaceTransform;

    return-object p0
.end method

.method public getCalibrationTransform2()Landroid/hardware/camera2/params/ColorSpaceTransform;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;->calibrationTransform2:Landroid/hardware/camera2/params/ColorSpaceTransform;

    return-object p0
.end method

.method public getColorFilterArrangement()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;->colorFilterArrangement:Ljava/lang/Integer;

    return-object p0
.end method

.method public getColorTransform1()Landroid/hardware/camera2/params/ColorSpaceTransform;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;->colorTransform1:Landroid/hardware/camera2/params/ColorSpaceTransform;

    return-object p0
.end method

.method public getColorTransform2()Landroid/hardware/camera2/params/ColorSpaceTransform;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;->colorTransform2:Landroid/hardware/camera2/params/ColorSpaceTransform;

    return-object p0
.end method

.method public getForwardMatrix1()Landroid/hardware/camera2/params/ColorSpaceTransform;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;->forwardMatrix1:Landroid/hardware/camera2/params/ColorSpaceTransform;

    return-object p0
.end method

.method public getForwardMatrix2()Landroid/hardware/camera2/params/ColorSpaceTransform;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;->forwardMatrix2:Landroid/hardware/camera2/params/ColorSpaceTransform;

    return-object p0
.end method

.method public getReferenceIlluminant1()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;->referenceIlluminant1:Ljava/lang/Integer;

    return-object p0
.end method

.method public getReferenceIlluminant2()Ljava/lang/Byte;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;->referenceIlluminant2:Ljava/lang/Byte;

    return-object p0
.end method

.method public getWhiteLevel()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;->whiteLevel:Ljava/lang/Integer;

    return-object p0
.end method
