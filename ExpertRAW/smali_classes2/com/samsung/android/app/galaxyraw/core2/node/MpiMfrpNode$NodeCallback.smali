.class public interface abstract Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$NodeCallback;
.super Ljava/lang/Object;
.source "MpiMfrpNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NodeCallback"
.end annotation


# virtual methods
.method public abstract onError(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation
.end method

.method public abstract onProgress(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bundle",
            "progress"
        }
    .end annotation
.end method
