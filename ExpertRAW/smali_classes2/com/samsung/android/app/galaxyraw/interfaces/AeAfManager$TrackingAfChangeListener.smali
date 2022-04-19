.class public interface abstract Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$TrackingAfChangeListener;
.super Ljava/lang/Object;
.source "AeAfManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TrackingAfChangeListener"
.end annotation


# virtual methods
.method public abstract onTrackingAfChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "afRect",
            "cropRegion"
        }
    .end annotation
.end method
