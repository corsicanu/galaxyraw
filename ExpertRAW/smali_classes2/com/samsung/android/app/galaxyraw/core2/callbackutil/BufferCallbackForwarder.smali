.class public abstract Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder;
.super Ljava/lang/Object;
.source "BufferCallbackForwarder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$PreviewBufferCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$BurstPictureBufferCallbackForwarder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Callback_T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;


# instance fields
.field protected mBufferForwarder:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder;

.field protected final mTarget:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TCallback_T;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-class v1, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCallback_T;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder;->mTarget:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    return-object v0
.end method


# virtual methods
.method public getBufferForwarder()Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder;->mBufferForwarder:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder;

    return-object p0
.end method

.method public getTarget()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCallback_T;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder;->mTarget:Ljava/lang/Object;

    return-object p0
.end method

.method public abstract setBufferForwarder(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bufferForwarder"
        }
    .end annotation
.end method
