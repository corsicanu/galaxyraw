.class public interface abstract Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$ZoomLockStateListener;
.super Ljava/lang/Object;
.source "CallbackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ZoomLockStateListener"
.end annotation


# static fields
.field public static final ZOOM_LOCK_STATE_ACTIVE:I = 0x1

.field public static final ZOOM_LOCK_STATE_INACTIVE:I = 0x0

.field public static final ZOOM_LOCK_STATE_LOCKED:I = 0x2


# virtual methods
.method public abstract onZoomLockStateChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomLockState"
        }
    .end annotation
.end method
