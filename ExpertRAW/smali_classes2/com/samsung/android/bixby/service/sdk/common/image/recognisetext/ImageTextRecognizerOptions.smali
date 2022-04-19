.class public Lcom/samsung/android/bixby/service/sdk/common/image/recognisetext/ImageTextRecognizerOptions;
.super Lcom/samsung/android/bixby/service/sdk/common/Options;
.source "ImageTextRecognizerOptions.java"


# instance fields
.field private mBoundaries:[Landroid/graphics/Rect;

.field private mLanguageList:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/bixby/service/sdk/common/Options;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/bixby/service/sdk/common/image/recognisetext/ImageTextRecognizerOptions;->mLanguageList:[I

    iput-object v0, p0, Lcom/samsung/android/bixby/service/sdk/common/image/recognisetext/ImageTextRecognizerOptions;->mBoundaries:[Landroid/graphics/Rect;

    return-void
.end method

.method public getBoundaries()[Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bixby/service/sdk/common/image/recognisetext/ImageTextRecognizerOptions;->mBoundaries:[Landroid/graphics/Rect;

    return-object p0
.end method

.method public getLanguageList()[I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bixby/service/sdk/common/image/recognisetext/ImageTextRecognizerOptions;->mLanguageList:[I

    return-object p0
.end method

.method public setBoundaries([Landroid/graphics/Rect;)Lcom/samsung/android/bixby/service/sdk/common/image/recognisetext/ImageTextRecognizerOptions;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bixby/service/sdk/common/image/recognisetext/ImageTextRecognizerOptions;->mBoundaries:[Landroid/graphics/Rect;

    return-object p0
.end method

.method public setLanguageList([I)Lcom/samsung/android/bixby/service/sdk/common/image/recognisetext/ImageTextRecognizerOptions;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bixby/service/sdk/common/image/recognisetext/ImageTextRecognizerOptions;->mLanguageList:[I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
