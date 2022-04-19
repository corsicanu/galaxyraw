.class public Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;
.super Ljava/lang/Object;
.source "ImageUpscaler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler$BindRunnable;
    }
.end annotation


# static fields
.field private static final RGBA_CHANNEL:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ScsApi@ImageUpscale"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mImageServiceExecutor:Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;

.field private mIsSessionCreated:Z

.field private mMetaBundle:Landroid/os/Bundle;

.field private mReadBuffer:Ljava/nio/ByteBuffer;

.field private final mUri:Landroid/net/Uri;

.field private mWriteBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mContext:Landroid/content/Context;

    const-string v0, "content://com.samsung.android.scs.ai.image"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mUri:Landroid/net/Uri;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mImageServiceExecutor:Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;

    new-instance p1, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler$BindRunnable;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler$BindRunnable;-><init>(Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler$1;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mImageServiceExecutor:Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private clearAllBuffer()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mWriteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mReadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mMetaBundle:Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/os/Bundle;->clear()V

    return-void
.end method

.method private configureBuffer(Landroid/graphics/Bitmap;ILandroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mMetaBundle:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    const-string v2, "imageWidth"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mMetaBundle:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const-string v2, "imageHeight"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mMetaBundle:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p1

    const-string v1, "imageSize"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mMetaBundle:Landroid/os/Bundle;

    const-string v0, "scaleFactor"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p3, :cond_0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mMetaBundle:Landroid/os/Bundle;

    const/4 p1, 0x4

    new-array p1, p1, [I

    const/4 p2, 0x0

    iget v0, p3, Landroid/graphics/Rect;->top:I

    aput v0, p1, p2

    const/4 p2, 0x1

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    aput v0, p1, p2

    const/4 p2, 0x2

    iget v0, p3, Landroid/graphics/Rect;->right:I

    aput v0, p1, p2

    const/4 p2, 0x3

    iget p3, p3, Landroid/graphics/Rect;->left:I

    aput p3, p1, p2

    const-string p2, "imagePadding"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public createSession(I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->createSession(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public createSession(ILjava/lang/String;)Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " createSession, requested capacity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScsApi@ImageUpscale"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "createSession: Context is Null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const-string v0, "FEATURE_IMAGE_UPSCALE"

    invoke-static {v0}, Lcom/samsung/android/sdk/scs/base/feature/FeatureStatusCache;->getStatus(Ljava/lang/String;)I

    move-result v3

    const/16 v4, -0x3e8

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/samsung/android/sdk/scs/base/feature/Feature;->checkFeature(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    :cond_1
    if-eqz v3, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "createSession: Status is not Success : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "capacity"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "applicationId"

    const-string v3, "com.samsung.android.sdk.scs.ai"

    invoke-virtual {v0, p1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "engineType"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mUri:Landroid/net/Uri;

    const-string v3, "upscaleImage"

    const-string v4, "createSession"

    invoke-virtual {p1, p2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "readMemory"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/SharedMemory;

    invoke-virtual {p2}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mWriteBuffer:Ljava/nio/ByteBuffer;

    const-string p2, "writeMemory"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/SharedMemory;

    invoke-virtual {p1}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mReadBuffer:Ljava/nio/ByteBuffer;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mMetaBundle:Landroid/os/Bundle;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mIsSessionCreated:Z
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p0

    const-string p1, " createSession failed"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Landroid/system/ErrnoException;->printStackTrace()V

    return v2
.end method

.method public detectScene(Landroid/graphics/Bitmap;)I
    .locals 8

    const-string v0, "ScsApi@ImageUpscale"

    const-string v1, "detectScene"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mIsSessionCreated:Z

    if-nez v1, :cond_1

    const-string p0, " detectScene Error :: Please call createSession() before calling detectScene"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->clearAllBuffer()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v2, v1}, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->configureBuffer(Landroid/graphics/Bitmap;ILandroid/graphics/Rect;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mWriteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mUri:Landroid/net/Uri;

    const-string v5, "upscaleImage"

    const-string v6, "performUpscale"

    iget-object v7, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mMetaBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v5, v6, v7}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->clearAllBuffer()V

    const-string p0, "sceneType"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "detectScene, time taken, scene is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " , "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "Exception :: detectScene"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2

    :cond_2
    :goto_0
    const-string p0, " detectScene Error :: Context is null or bitmap is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public endSession()V
    .locals 6

    const-string v0, "ScsApi@ImageUpscale"

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "applicationId"

    const-string v3, "com.samsung.android.sdk.scs.ai"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mUri:Landroid/net/Uri;

    const-string v4, "upscaleImage"

    const-string v5, "endSession"

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mWriteBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mWriteBuffer:Ljava/nio/ByteBuffer;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mReadBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_1

    invoke-static {v1}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mReadBuffer:Ljava/nio/ByteBuffer;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mImageServiceExecutor:Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;->deInit()V

    :cond_2
    const-string v1, " endSession"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, " Exception endSession "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mIsSessionCreated:Z

    return-void
.end method

.method public upscaleImage(Landroid/graphics/Bitmap;ILandroid/graphics/Rect;I)Landroid/graphics/Bitmap;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upscaleImage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ScsApi@ImageUpscale"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mIsSessionCreated:Z

    if-nez v0, :cond_1

    const-string p0, " upscaleImage Error :: Please call createSession() before calling upscaleImage"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->clearAllBuffer()V

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->configureBuffer(Landroid/graphics/Bitmap;ILandroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mMetaBundle:Landroid/os/Bundle;

    const-string p3, "sceneType"

    invoke-virtual {p2, p3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-object p4, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mWriteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p4}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " input copyPixelsToBuffer TIME TAKEN "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, p2

    invoke-virtual {p4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-object p4, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mUri:Landroid/net/Uri;

    const-string v6, "performUpscale"

    iget-object v7, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mMetaBundle:Landroid/os/Bundle;

    invoke-virtual {p4, v0, v1, v6, v7}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " perform upscale SDK TIME TAKEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, p2

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->clearAllBuffer()V

    const-string p2, "imageWidth"

    invoke-virtual {p4, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const-string p3, "imageHeight"

    invoke-virtual {p4, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    const-string v0, "imageSize"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p4

    if-nez p4, :cond_2

    const-string p0, " received empty buffer"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " received buffer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v2, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p4, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mReadBuffer:Ljava/nio/ByteBuffer;

    mul-int v0, p2, p3

    mul-int/lit8 v0, v0, 0x4

    invoke-virtual {p4, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p4

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p1

    invoke-static {p2, p3, p4, v6, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " create scaled bitmap TIME TAKEN "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    sub-long/2addr p3, v0

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;->mReadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, " output copyPixelsFromBuffer TIME TAKEN "

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p2

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " total time by upscaleImage at SDK "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, v4

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    const-string p1, " Exception :: upscale "

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3

    :cond_3
    :goto_0
    const-string p0, " upscaleImage Error :: Context is null or bitmap is null"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method
