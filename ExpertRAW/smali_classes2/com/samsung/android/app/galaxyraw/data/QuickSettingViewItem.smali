.class public Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;
.super Ljava/lang/Object;
.source "QuickSettingViewItem.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private final mCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

.field private final mDrawableResId:I

.field private mImageLevel:I

.field private mIsBadgeActivated:Z

.field private mIsEnabled:Z

.field private mIsLandscapeDrawableSupported:Z

.field private mIsSelected:Z

.field private final mSettingKey:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;IZZZ)V
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
            "commandId",
            "imageLevel",
            "isSelected",
            "isEnabled",
            "isBadgeActivated"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->mCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;->getImageResourceId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->mDrawableResId:I

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->getSettingKey(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->mSettingKey:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->mImageLevel:I

    iput-boolean p3, p0, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->mIsSelected:Z

    iput-boolean p4, p0, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->mIsEnabled:Z

    iput-boolean p5, p0, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->mIsBadgeActivated:Z

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;->isLandscapeDrawableSupported()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->mIsLandscapeDrawableSupported:Z

    return-void
.end method


# virtual methods
.method public clone()Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->clone()Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->mCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->mCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getCommandId()Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->mCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    return-object p0
.end method

.method public getContentDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->mSettingKey:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->mCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->mImageLevel:I

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->getCommandId(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;->getContentDescriptionId()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;->getContentDescriptionId()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;->getTitleId()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;->getTitleId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;->getSubTitleId()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;->getFormatValue()I

    move-result v1

    const-string v2, ", "

    if-nez v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;->getSubTitleId()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;->getSubTitleId()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;->getFormatValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDrawableResId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->mDrawableResId:I

    return p0
.end method

.method public getEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->mIsEnabled:Z

    return p0
.end method

.method public getImageLevel()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->mImageLevel:I

    return p0
.end method

.method public getSelected()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->mIsSelected:Z

    return p0
.end method

.method public isBadgeActivated()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->mIsBadgeActivated:Z

    return p0
.end method

.method public isLandscapeDrawableSupported()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->mIsLandscapeDrawableSupported:Z

    return p0
.end method

.method public setBadgeActivated(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isBadgeActivated"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->mIsBadgeActivated:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->mIsEnabled:Z

    return-void
.end method

.method public setImageLevel(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageLevel"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->mImageLevel:I

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

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->mIsSelected:Z

    return-void
.end method
