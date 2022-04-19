.class Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;
.super Ljava/lang/Object;
.source "CameraDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DialogStringSet"
.end annotation


# instance fields
.field private mMessageResId:I

.field private mMessageSubResId:I

.field private mNegativeButtonTextResId:I

.field private mPositiveButtonTextResId:I

.field private mTitleResId:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "titleResId",
            "messageResId",
            "positiveButtonTextResId",
            "negativeButtonTextResId"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;->mMessageSubResId:I

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;->mTitleResId:I

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;->mMessageResId:I

    iput p3, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;->mPositiveButtonTextResId:I

    iput p4, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;->mNegativeButtonTextResId:I

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "titleResId",
            "messageResId",
            "messageSubResId",
            "positiveButtonTextResId",
            "negativeButtonTextResId"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;->mMessageSubResId:I

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;->mTitleResId:I

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;->mMessageResId:I

    iput p4, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;->mPositiveButtonTextResId:I

    iput p5, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;->mNegativeButtonTextResId:I

    iput p3, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;->mMessageSubResId:I

    return-void
.end method


# virtual methods
.method getMessageResId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;->mMessageResId:I

    return p0
.end method

.method getMessageSubResId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;->mMessageSubResId:I

    return p0
.end method

.method getNegativeButtonTextResId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;->mNegativeButtonTextResId:I

    return p0
.end method

.method getPositiveButtonTextResId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;->mPositiveButtonTextResId:I

    return p0
.end method

.method getTitleResId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;->mTitleResId:I

    return p0
.end method
