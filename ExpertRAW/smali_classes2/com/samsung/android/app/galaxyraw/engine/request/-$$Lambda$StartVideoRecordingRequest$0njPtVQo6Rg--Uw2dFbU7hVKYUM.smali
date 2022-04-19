.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$StartVideoRecordingRequest$0njPtVQo6Rg--Uw2dFbU7hVKYUM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/engine/request/StartVideoRecordingRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/request/StartVideoRecordingRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$StartVideoRecordingRequest$0njPtVQo6Rg--Uw2dFbU7hVKYUM;->f$0:Lcom/samsung/android/app/galaxyraw/engine/request/StartVideoRecordingRequest;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$StartVideoRecordingRequest$0njPtVQo6Rg--Uw2dFbU7hVKYUM;->f$0:Lcom/samsung/android/app/galaxyraw/engine/request/StartVideoRecordingRequest;

    check-cast p1, Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/StartVideoRecordingRequest;->lambda$execute$0$StartVideoRecordingRequest(Landroid/media/MediaRecorder;)V

    return-void
.end method
