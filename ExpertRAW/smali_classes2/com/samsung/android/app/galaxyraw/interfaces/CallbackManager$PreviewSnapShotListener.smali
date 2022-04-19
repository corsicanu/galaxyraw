.class public interface abstract Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$PreviewSnapShotListener;
.super Ljava/lang/Object;
.source "CallbackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PreviewSnapShotListener"
.end annotation


# virtual methods
.method public abstract onPreviewSnapShotTaken(Landroid/graphics/Bitmap;Landroid/util/Size;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "previewSnapBitmap",
            "previewSnapSize"
        }
    .end annotation
.end method
