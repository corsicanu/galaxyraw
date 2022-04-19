.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$LensSuggestionCallbackForwarder$HFCaEY4DAobj3jOs19JD3xzD0Tk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$LensSuggestionCallbackForwarder;

.field public final synthetic f$1:Ljava/lang/Integer;

.field public final synthetic f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$LensSuggestionCallbackForwarder;Ljava/lang/Integer;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$LensSuggestionCallbackForwarder$HFCaEY4DAobj3jOs19JD3xzD0Tk;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$LensSuggestionCallbackForwarder;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$LensSuggestionCallbackForwarder$HFCaEY4DAobj3jOs19JD3xzD0Tk;->f$1:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$LensSuggestionCallbackForwarder$HFCaEY4DAobj3jOs19JD3xzD0Tk;->f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$LensSuggestionCallbackForwarder$HFCaEY4DAobj3jOs19JD3xzD0Tk;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$LensSuggestionCallbackForwarder;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$LensSuggestionCallbackForwarder$HFCaEY4DAobj3jOs19JD3xzD0Tk;->f$1:Ljava/lang/Integer;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$LensSuggestionCallbackForwarder$HFCaEY4DAobj3jOs19JD3xzD0Tk;->f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$LensSuggestionCallbackForwarder;->lambda$onLensSuggestionChanged$1$CallbackForwarder$LensSuggestionCallbackForwarder(Ljava/lang/Integer;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method
