.class public final synthetic Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$CameraResolution$-Z1zNexJAvtpko3A8VaFaZ5QNso;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$CameraResolution$-Z1zNexJAvtpko3A8VaFaZ5QNso;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$CameraResolution$-Z1zNexJAvtpko3A8VaFaZ5QNso;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$CameraResolution$-Z1zNexJAvtpko3A8VaFaZ5QNso;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$CameraResolution$-Z1zNexJAvtpko3A8VaFaZ5QNso;->INSTANCE:Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$CameraResolution$-Z1zNexJAvtpko3A8VaFaZ5QNso;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    check-cast p2, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->lambda$sortResolutionList$8(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)I

    move-result p0

    return p0
.end method
