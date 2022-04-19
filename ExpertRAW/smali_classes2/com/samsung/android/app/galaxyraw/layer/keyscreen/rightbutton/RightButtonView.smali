.class public Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/RightButtonView;
.super Landroid/widget/FrameLayout;
.source "RightButtonView.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/RightButtonContract$View;


# static fields
.field private static final TAG:Ljava/lang/String; = "RightButtonView"

.field private static final mLensButtonResourceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/RightButtonContract$Presenter;

.field private mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenRightButtonBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/RightButtonView;->mLensButtonResourceMap:Ljava/util/Map;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->getSubCommandIdList(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/-$$Lambda$RightButtonView$oeF7BFbxBsmyW0_NO2wo1y4rXSo;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/-$$Lambda$RightButtonView$oeF7BFbxBsmyW0_NO2wo1y4rXSo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/RightButtonView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/RightButtonView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private enableButtonMoveAnimation()V
    .locals 2

    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/RightButtonView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenRightButtonBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenRightButtonBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/RightButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenRightButtonBinding;

    return-void
.end method

.method static synthetic lambda$static$0(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/RightButtonView;->mLensButtonResourceMap:Ljava/util/Map;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->getSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;->getImageResourceId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public initialize()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/RightButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenRightButtonBinding;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/RightButtonView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/RightButtonContract$Presenter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenRightButtonBinding;->setPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/RightButtonContract$Presenter;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/RightButtonView;->enableButtonMoveAnimation()V

    return-void
.end method

.method public synthetic lambda$updateButtonResource$1$RightButtonView(Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/RightButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenRightButtonBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenRightButtonBinding;->lensButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-void
.end method

.method public bridge synthetic setPresenter(Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$Presenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "presenter"
        }
    .end annotation

    check-cast p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/RightButtonContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/RightButtonView;->setPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/RightButtonContract$Presenter;)V

    return-void
.end method

.method public setPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/RightButtonContract$Presenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "presenter"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/RightButtonView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/RightButtonContract$Presenter;

    return-void
.end method

.method public updateButtonResource(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lensType"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/RightButtonView;->mLensButtonResourceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/-$$Lambda$RightButtonView$DRXQuzTvu5UmxWjyGm5YUkjskOM;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/-$$Lambda$RightButtonView$DRXQuzTvu5UmxWjyGm5YUkjskOM;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/RightButtonView;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
