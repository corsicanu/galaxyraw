.class public abstract Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "PopupTextBalloonBinding.java"


# instance fields
.field public final button:Landroid/widget/TextView;

.field public final description:Landroid/widget/TextView;

.field protected mPresenter:Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Presenter;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final radioButton1:Landroid/widget/RadioButton;

.field public final radioButton2:Landroid/widget/RadioButton;

.field public final radioGroup:Landroid/widget/RadioGroup;

.field public final textBalloonSubViewGroup:Landroid/widget/RelativeLayout;

.field public final textBalloonViewGroup:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioGroup;Landroid/widget/RelativeLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "_bindingComponent",
            "_root",
            "_localFieldCount",
            "button",
            "description",
            "radioButton1",
            "radioButton2",
            "radioGroup",
            "textBalloonSubViewGroup",
            "textBalloonViewGroup"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;->button:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;->description:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;->radioButton1:Landroid/widget/RadioButton;

    iput-object p7, p0, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;->radioButton2:Landroid/widget/RadioButton;

    iput-object p8, p0, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;->radioGroup:Landroid/widget/RadioGroup;

    iput-object p9, p0, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;->textBalloonSubViewGroup:Landroid/widget/RelativeLayout;

    iput-object p10, p0, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;->textBalloonViewGroup:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "component"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0084

    invoke-static {p1, p0, v0}, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "root",
            "attachToRoot"
        }
    .end annotation

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "root",
            "attachToRoot",
            "component"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0084

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inflater",
            "component"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0084

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;

    return-object p0
.end method


# virtual methods
.method public getPresenter()Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Presenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Presenter;

    return-object p0
.end method

.method public abstract setPresenter(Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Presenter;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "presenter"
        }
    .end annotation
.end method
