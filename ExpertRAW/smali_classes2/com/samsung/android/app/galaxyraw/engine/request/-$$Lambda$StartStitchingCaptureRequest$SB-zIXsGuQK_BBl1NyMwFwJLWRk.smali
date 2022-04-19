.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$StartStitchingCaptureRequest$SB-zIXsGuQK_BBl1NyMwFwJLWRk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$StartStitchingCaptureRequest$SB-zIXsGuQK_BBl1NyMwFwJLWRk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$StartStitchingCaptureRequest$SB-zIXsGuQK_BBl1NyMwFwJLWRk;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$StartStitchingCaptureRequest$SB-zIXsGuQK_BBl1NyMwFwJLWRk;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$StartStitchingCaptureRequest$SB-zIXsGuQK_BBl1NyMwFwJLWRk;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$StartStitchingCaptureRequest$SB-zIXsGuQK_BBl1NyMwFwJLWRk;

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

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/request/StartStitchingCaptureRequest;->lambda$execute$0(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureEventListener;)V

    return-void
.end method
