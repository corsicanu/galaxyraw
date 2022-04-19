.class public interface abstract Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$ForwardCallback;
.super Ljava/lang/Object;
.source "BufferForwarder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ForwardCallback"
.end annotation


# virtual methods
.method public abstract onBufferForward(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$ForwardData;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forwardData"
        }
    .end annotation
.end method

.method public abstract onNotify(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$ForwardData;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forwardData"
        }
    .end annotation
.end method
