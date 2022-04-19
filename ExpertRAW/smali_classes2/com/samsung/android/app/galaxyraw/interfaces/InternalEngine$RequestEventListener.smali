.class public interface abstract Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$RequestEventListener;
.super Ljava/lang/Object;
.source "InternalEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RequestEventListener"
.end annotation


# virtual methods
.method public abstract onApplySettingsRequested(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequenceId"
        }
    .end annotation
.end method

.method public abstract onRestartPreviewRequested(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequenceId"
        }
    .end annotation
.end method

.method public abstract onStartPreviewRequested(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequenceId"
        }
    .end annotation
.end method

.method public abstract onStartVideoPreviewRequested(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequenceId"
        }
    .end annotation
.end method
