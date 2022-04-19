.class public interface abstract Lcom/samsung/android/app/galaxyraw/interfaces/IndicatorManager;
.super Ljava/lang/Object;
.source "IndicatorManager.java"


# virtual methods
.method public abstract hideApertureIndicator()V
.end method

.method public abstract hideHdr10PlusIndicator()V
.end method

.method public abstract setRemainCountIndicator(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation
.end method

.method public abstract showApertureIndicator(F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apertureValue"
        }
    .end annotation
.end method

.method public abstract showHdr10PlusIndicator()V
.end method
