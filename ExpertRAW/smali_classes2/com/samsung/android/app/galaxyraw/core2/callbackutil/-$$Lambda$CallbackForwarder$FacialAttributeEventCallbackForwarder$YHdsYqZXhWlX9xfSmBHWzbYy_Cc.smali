.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$FacialAttributeEventCallbackForwarder$YHdsYqZXhWlX9xfSmBHWzbYy_Cc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$FacialAttributeEventCallbackForwarder;

.field public final synthetic f$1:J

.field public final synthetic f$2:[B

.field public final synthetic f$3:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$FacialAttributeEventCallbackForwarder;J[BLcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$FacialAttributeEventCallbackForwarder$YHdsYqZXhWlX9xfSmBHWzbYy_Cc;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$FacialAttributeEventCallbackForwarder;

    iput-wide p2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$FacialAttributeEventCallbackForwarder$YHdsYqZXhWlX9xfSmBHWzbYy_Cc;->f$1:J

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$FacialAttributeEventCallbackForwarder$YHdsYqZXhWlX9xfSmBHWzbYy_Cc;->f$2:[B

    iput-object p5, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$FacialAttributeEventCallbackForwarder$YHdsYqZXhWlX9xfSmBHWzbYy_Cc;->f$3:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$FacialAttributeEventCallbackForwarder$YHdsYqZXhWlX9xfSmBHWzbYy_Cc;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$FacialAttributeEventCallbackForwarder;

    iget-wide v1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$FacialAttributeEventCallbackForwarder$YHdsYqZXhWlX9xfSmBHWzbYy_Cc;->f$1:J

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$FacialAttributeEventCallbackForwarder$YHdsYqZXhWlX9xfSmBHWzbYy_Cc;->f$2:[B

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$FacialAttributeEventCallbackForwarder$YHdsYqZXhWlX9xfSmBHWzbYy_Cc;->f$3:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$FacialAttributeEventCallbackForwarder;->lambda$onFacialAttributeResult$3$CallbackForwarder$FacialAttributeEventCallbackForwarder(J[BLcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method
