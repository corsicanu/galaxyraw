.class public interface abstract Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$CompositionGuideEventListener;
.super Ljava/lang/Object;
.source "CallbackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CompositionGuideEventListener"
.end annotation


# virtual methods
.method public abstract onCompositionGuideEvent(Landroid/graphics/PointF;FI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "movePosition",
            "angle",
            "status"
        }
    .end annotation
.end method