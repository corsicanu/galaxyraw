.class public interface abstract Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer$SequenceCallback;
.super Ljava/lang/Object;
.source "Sequencer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/util/Sequencer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SequenceCallback"
.end annotation


# virtual methods
.method public abstract onSequenceComplete(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequence"
        }
    .end annotation
.end method

.method public abstract onSequenceStarted(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequence"
        }
    .end annotation
.end method
