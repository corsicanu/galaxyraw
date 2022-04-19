.class public Lcom/samsung/android/app/galaxyraw/AttachViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "AttachViewModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/AttachViewModel$AttachViewModelFactory;
    }
.end annotation


# instance fields
.field private mAttachType:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/samsung/android/app/galaxyraw/AttachModeManager$AttachType;",
            ">;"
        }
    .end annotation
.end field

.field private mContentUri:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientation:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPictureData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "[B>;"
        }
    .end annotation
.end field

.field private mSaveUri:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbnail:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/AttachViewModel;->mSaveUri:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/AttachViewModel;->mContentUri:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/AttachViewModel;->mAttachType:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/AttachViewModel;->mPictureData:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/AttachViewModel;->mOrientation:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/AttachViewModel;->mThumbnail:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public getAttachType()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/samsung/android/app/galaxyraw/AttachModeManager$AttachType;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/AttachViewModel;->mAttachType:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/AttachViewModel;->mContentUri:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    return-object p0
.end method

.method public getOrientation()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/AttachViewModel;->mOrientation:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getPictureData()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/AttachViewModel;->mPictureData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public getSaveUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/AttachViewModel;->mSaveUri:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    return-object p0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/AttachViewModel;->mThumbnail:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setData(Lcom/samsung/android/app/galaxyraw/AttachModeManager$AttachType;Landroid/net/Uri;Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "attachType",
            "saveUri",
            "contentData"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/AttachViewModel;->mAttachType:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/AttachViewModel;->mSaveUri:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/AttachViewModel;->mPictureData:Landroidx/lifecycle/MutableLiveData;

    invoke-interface {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;->getPictureData()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/AttachViewModel;->mThumbnail:Landroidx/lifecycle/MutableLiveData;

    invoke-interface {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/AttachViewModel;->mOrientation:Landroidx/lifecycle/MutableLiveData;

    invoke-interface {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;->getOrientation()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/AttachViewModel;->mContentUri:Landroidx/lifecycle/MutableLiveData;

    invoke-interface {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;->getContentUriForWriting()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
