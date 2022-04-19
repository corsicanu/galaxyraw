.class public final synthetic Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$CameraResolution$ZGGe9a3FBBeeqMd3zfVUd-8vNxc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$CameraResolution$ZGGe9a3FBBeeqMd3zfVUd-8vNxc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$CameraResolution$ZGGe9a3FBBeeqMd3zfVUd-8vNxc;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$CameraResolution$ZGGe9a3FBBeeqMd3zfVUd-8vNxc;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$CameraResolution$ZGGe9a3FBBeeqMd3zfVUd-8vNxc;->INSTANCE:Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$CameraResolution$ZGGe9a3FBBeeqMd3zfVUd-8vNxc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->lambda$getSelectableBackVideoResolutionList$5(I)[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p0

    return-object p0
.end method
