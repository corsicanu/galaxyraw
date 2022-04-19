.class public Lcom/sec/android/vsw/myfilter/solution/optimizer/MyFilterCeresOptimizer;
.super Ljava/lang/Object;
.source "MyFilterCeresOptimizer.java"


# static fields
.field private static final _TAG:Ljava/lang/String; = "MyFilterOptimizer-AAR"

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MyFilter.camera.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native ExtractStyle([B[B[B[BF)Z
.end method

.method public static native ExtractStyleFeature([B[B[B[BF[F)Z
.end method

.method public static native GetOptimizerLibVersion()Ljava/lang/String;
.end method

.method public static extractStyle(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)Z
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/sec/android/vsw/myfilter/solution/optimizer/MyFilterCeresOptimizer;->extractStyle(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F[F)Z

    move-result p0

    return p0
.end method

.method public static extractStyle(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F[F)Z
    .locals 8

    const-string v0, "MyFilterOptimizer-AAR"

    const-string v1, "extractStyle - Begin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/sec/android/vsw/myfilter/solution/utils/MyFilterImageUtil;->getByteArrayFromBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    invoke-static {p1}, Lcom/sec/android/vsw/myfilter/solution/utils/MyFilterImageUtil;->getByteArrayFromBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    invoke-static {p2}, Lcom/sec/android/vsw/myfilter/solution/utils/MyFilterImageUtil;->getByteArrayFromBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v4

    invoke-static {p3}, Lcom/sec/android/vsw/myfilter/solution/utils/MyFilterImageUtil;->getByteArrayFromBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object p0

    if-nez p5, :cond_0

    invoke-static {v2, v3, v4, p0, p4}, Lcom/sec/android/vsw/myfilter/solution/optimizer/MyFilterCeresOptimizer;->ExtractStyle([B[B[B[BF)Z

    move-result p1

    goto :goto_0

    :cond_0
    move-object v5, p0

    move v6, p4

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lcom/sec/android/vsw/myfilter/solution/optimizer/MyFilterCeresOptimizer;->ExtractStyleFeature([B[B[B[BF[F)Z

    move-result p1

    :goto_0
    invoke-static {p3, p0}, Lcom/sec/android/vsw/myfilter/solution/utils/MyFilterImageUtil;->setByteArrayToBitmap(Landroid/graphics/Bitmap;[B)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "extractStyle - End, "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method
