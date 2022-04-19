.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$ResumeVideoRecordingRequest$p_U_-BNaV2clh6Pnw-qeO9ULH2E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$ResumeVideoRecordingRequest$p_U_-BNaV2clh6Pnw-qeO9ULH2E;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$ResumeVideoRecordingRequest$p_U_-BNaV2clh6Pnw-qeO9ULH2E;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$ResumeVideoRecordingRequest$p_U_-BNaV2clh6Pnw-qeO9ULH2E;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$ResumeVideoRecordingRequest$p_U_-BNaV2clh6Pnw-qeO9ULH2E;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$ResumeVideoRecordingRequest$p_U_-BNaV2clh6Pnw-qeO9ULH2E;

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

    check-cast p1, Landroid/media/MediaRecorder;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/request/ResumeVideoRecordingRequest;->lambda$execute$0(Landroid/media/MediaRecorder;)V

    return-void
.end method
