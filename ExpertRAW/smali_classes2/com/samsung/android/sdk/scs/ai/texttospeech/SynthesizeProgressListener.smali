.class public abstract Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeProgressListener;
.super Ljava/lang/Object;
.source "SynthesizeProgressListener.java"


# static fields
.field public static final KEY_RANGE_INFO_PARAM_END_INDEX:Ljava/lang/String; = "KEY_RANGE_INFO_PARAM_END_INDEX"

.field public static final KEY_RANGE_INFO_PARAM_START_INDEX:Ljava/lang/String; = "KEY_RANGE_INFO_PARAM_START_INDEX"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onEngineInitDone(I)V
.end method

.method public abstract onGenerateAudio(Ljava/lang/String;[B)V
.end method

.method public abstract onGenerateRangeInfo(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract onSynthesizeDone(Ljava/lang/String;)V
.end method

.method public abstract onSynthesizeError(Ljava/lang/String;I)V
.end method

.method public abstract onSynthesizeStart(Ljava/lang/String;III)V
.end method

.method public abstract onVoiceListReloadDone(Landroid/os/Bundle;)V
.end method
