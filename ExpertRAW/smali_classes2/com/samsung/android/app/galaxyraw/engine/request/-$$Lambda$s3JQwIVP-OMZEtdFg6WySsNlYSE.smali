.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$s3JQwIVP-OMZEtdFg6WySsNlYSE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$s3JQwIVP-OMZEtdFg6WySsNlYSE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$s3JQwIVP-OMZEtdFg6WySsNlYSE;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$s3JQwIVP-OMZEtdFg6WySsNlYSE;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$s3JQwIVP-OMZEtdFg6WySsNlYSE;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$s3JQwIVP-OMZEtdFg6WySsNlYSE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureEventListener;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureEventListener;->onCaptureStarted()V

    return-void
.end method
