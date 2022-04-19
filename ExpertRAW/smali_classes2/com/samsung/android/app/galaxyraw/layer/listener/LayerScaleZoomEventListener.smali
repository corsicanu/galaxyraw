.class public interface abstract Lcom/samsung/android/app/galaxyraw/layer/listener/LayerScaleZoomEventListener;
.super Ljava/lang/Object;
.source "LayerScaleZoomEventListener.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/listener/LayerScaleEventListener;


# virtual methods
.method public abstract onScale(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomLevel"
        }
    .end annotation
.end method

.method public abstract onScaleBegin()V
.end method

.method public abstract onScaleEnd()V
.end method
