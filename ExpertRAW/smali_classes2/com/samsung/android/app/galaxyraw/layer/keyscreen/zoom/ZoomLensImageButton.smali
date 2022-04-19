.class public Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensImageButton;
.super Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensButton;
.source "ZoomLensImageButton.java"


# instance fields
.field private mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensImageButtonBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensButton;-><init>(Landroid/content/Context;)V

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

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public initialize(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;ILcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "commandId",
            "value",
            "zoomCategory",
            "defaultValue",
            "isSelected"
        }
    .end annotation

    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensButton;->initialize(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;ILcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;Z)V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensImageButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensImageButtonBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensImageButtonBinding;->image:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;->getImageResourceId()I

    move-result p1

    const/4 p4, 0x0

    invoke-virtual {p3, p1, p4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p5}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensImageButton;->setSelected(Z)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selected"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensButton;->setSelected(Z)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensImageButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensImageButtonBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensImageButtonBinding;->background:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method

.method public setViewBinding(Landroidx/databinding/ViewDataBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewDataBinding"
        }
    .end annotation

    check-cast p1, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensImageButtonBinding;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensImageButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensImageButtonBinding;

    return-void
.end method
