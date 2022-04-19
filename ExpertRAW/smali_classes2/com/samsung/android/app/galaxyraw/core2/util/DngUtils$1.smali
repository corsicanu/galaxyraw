.class Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$1;
.super Ljava/util/HashMap;
.source "DngUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$SetDngMetadataExecutor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$DngUtils$1$8ayOz-oPFgoliM6cuczlMS5-klc;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$DngUtils$1$8ayOz-oPFgoliM6cuczlMS5-klc;

    const-string v1, "orientation"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$DngUtils$1$rC6_ynaoykzLoDtW9ESAiVuZJ3Q;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$DngUtils$1$rC6_ynaoykzLoDtW9ESAiVuZJ3Q;

    const-string v1, "captureTime"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$DngUtils$1$3oOCqvuIAXcN5eM1tEbEcB5UGfM;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$DngUtils$1$3oOCqvuIAXcN5eM1tEbEcB5UGfM;

    const-string v1, "blackLevel"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$DngUtils$1$JvbdT7gyJ-dlt_rsAwyAEwv853w;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$DngUtils$1$JvbdT7gyJ-dlt_rsAwyAEwv853w;

    const-string v1, "whiteLevel"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$DngUtils$1$uAxLUlYnu1JtthamOeFfBpXcGd4;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$DngUtils$1$uAxLUlYnu1JtthamOeFfBpXcGd4;

    const-string v1, "colorMatrix"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$DngUtils$1$Z1HTlWdcKWKg4nltqVTZmmwyUxc;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$DngUtils$1$Z1HTlWdcKWKg4nltqVTZmmwyUxc;

    const-string v1, "colorCalibration"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$DngUtils$1$QKGe8ywPDF2DoXMNPKakm2hy_1o;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$DngUtils$1$QKGe8ywPDF2DoXMNPKakm2hy_1o;

    const-string v1, "neutralColorPoint"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$DngUtils$1$gIYQ_KMG-tVxbbn-Upvtw8PqN38;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$DngUtils$1$gIYQ_KMG-tVxbbn-Upvtw8PqN38;

    const-string v1, "illuminati"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$DngUtils$1$qdQ1DXd_pw0VTEumsKrG-nXx0kE;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$DngUtils$1$qdQ1DXd_pw0VTEumsKrG-nXx0kE;

    const-string v1, "forwardTransform"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$DngUtils$1$apvQV1qNVBjdTttgE3ilbOYJ1AI;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$DngUtils$1$apvQV1qNVBjdTttgE3ilbOYJ1AI;

    const-string v1, "noiseProfile"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$DngUtils$1$-3G8KL0h8VF-UFtz6UtSNmURl5s;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$DngUtils$1$-3G8KL0h8VF-UFtz6UtSNmURl5s;

    const-string v1, "exposureTime"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$DngUtils$1$SO-ql9YIEjKME7efzRlffyQJ3kY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$DngUtils$1$SO-ql9YIEjKME7efzRlffyQJ3kY;

    const-string v1, "colorFilterArrangement"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$DngUtils$1$WivSQ66vwHiWfYCa1_qqAiQ9QCc;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$DngUtils$1$WivSQ66vwHiWfYCa1_qqAiQ9QCc;

    const-string v1, "fNumber"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$DngUtils$1$IXOETcwybVNZW15b7BQ6GR_3k3g;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$DngUtils$1$IXOETcwybVNZW15b7BQ6GR_3k3g;

    const-string v1, "iso"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$DngUtils$1$UZ6wTQsq1pnzPmC11y99q_lao18;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$DngUtils$1$UZ6wTQsq1pnzPmC11y99q_lao18;

    const-string v1, "focalLength"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$DngUtils$1$9Sc_UFNhUCkSUll3aKffdPJtt9M;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$DngUtils$1$9Sc_UFNhUCkSUll3aKffdPJtt9M;

    const-string v1, "latitude"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$new$0(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->access$1500(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$new$1(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->access$1400(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$new$10(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->access$500(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$new$11(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->access$400(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$new$12(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->access$300(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$new$13(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->access$200(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$new$14(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->access$100(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$new$15(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->access$000(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$new$2(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->access$1300(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$new$3(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->access$1200(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$new$4(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->access$1100(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$new$5(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->access$1000(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$new$6(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->access$900(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$new$7(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->access$800(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$new$8(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->access$700(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$new$9(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->access$600(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method
