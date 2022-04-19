.class public Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;
.super Ljava/lang/Object;
.source "ProControlPanelItem.java"


# instance fields
.field private mButtonText:Ljava/lang/String;

.field private mIsDefaultValueState:Z

.field private mIsEnabled:Z

.field private mIsSelected:Z

.field private mIsSlideAnimationSupported:Z

.field private mIsSubTextSupported:Z

.field private final mResourceIdSet:Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceIdSet"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;->mIsEnabled:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;->mIsSelected:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;->mIsDefaultValueState:Z

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;->mResourceIdSet:Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;->mIsSubTextSupported:Z

    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;->mIsSlideAnimationSupported:Z

    return-void
.end method


# virtual methods
.method public getButtonText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;->mButtonText:Ljava/lang/String;

    return-object p0
.end method

.method public getEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;->mIsEnabled:Z

    return p0
.end method

.method public getResourceIdSet()Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;->mResourceIdSet:Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    return-object p0
.end method

.method public isDefaultValueState()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;->mIsDefaultValueState:Z

    return p0
.end method

.method public isSelected()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;->mIsSelected:Z

    return p0
.end method

.method public isSlideAnimationSupported()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;->mIsSlideAnimationSupported:Z

    return p0
.end method

.method public isSubTextSupported()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;->mIsSubTextSupported:Z

    return p0
.end method

.method public setButtonText(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;->mButtonText:Ljava/lang/String;

    return-void
.end method

.method public setButtonValueState(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isDefaultValueState"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;->mIsDefaultValueState:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;->mIsEnabled:Z

    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isSelected"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;->mIsSelected:Z

    return-void
.end method

.method public setSlideAnimationSupported(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isSlideAnimationSupported"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;->mIsSlideAnimationSupported:Z

    return-void
.end method

.method public setSubTextSupported(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isSubTextSupported"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;->mIsSubTextSupported:Z

    return-void
.end method
