.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$RecordStateCallbackForwarder$u22ev_skKU5ng-B0zMUTB6x9kJg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$RecordStateCallbackForwarder;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$RecordStateCallbackForwarder;ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$RecordStateCallbackForwarder$u22ev_skKU5ng-B0zMUTB6x9kJg;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$RecordStateCallbackForwarder;

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$RecordStateCallbackForwarder$u22ev_skKU5ng-B0zMUTB6x9kJg;->f$1:I

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$RecordStateCallbackForwarder$u22ev_skKU5ng-B0zMUTB6x9kJg;->f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$RecordStateCallbackForwarder$u22ev_skKU5ng-B0zMUTB6x9kJg;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$RecordStateCallbackForwarder;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$RecordStateCallbackForwarder$u22ev_skKU5ng-B0zMUTB6x9kJg;->f$1:I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$RecordStateCallbackForwarder$u22ev_skKU5ng-B0zMUTB6x9kJg;->f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$RecordStateCallbackForwarder;->lambda$onRecordRequestRemoved$5$CallbackForwarder$RecordStateCallbackForwarder(ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method
