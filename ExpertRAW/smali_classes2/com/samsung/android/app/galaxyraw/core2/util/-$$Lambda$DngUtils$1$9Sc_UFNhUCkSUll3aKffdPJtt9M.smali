.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$DngUtils$1$9Sc_UFNhUCkSUll3aKffdPJtt9M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$SetDngMetadataExecutor;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$DngUtils$1$9Sc_UFNhUCkSUll3aKffdPJtt9M;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$DngUtils$1$9Sc_UFNhUCkSUll3aKffdPJtt9M;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$DngUtils$1$9Sc_UFNhUCkSUll3aKffdPJtt9M;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$DngUtils$1$9Sc_UFNhUCkSUll3aKffdPJtt9M;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$DngUtils$1$9Sc_UFNhUCkSUll3aKffdPJtt9M;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$1;->lambda$new$15(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method
