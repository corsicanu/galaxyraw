.class public Lcom/samsung/android/app/galaxyraw/data/BeautyListItem;
.super Ljava/lang/Object;
.source "BeautyListItem.java"


# instance fields
.field private final mCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

.field private mIsSelected:Z

.field private final mResourceIdSet:Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "commandId",
            "isSelected"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/data/BeautyListItem;->mCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/data/BeautyListItem;->mResourceIdSet:Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    iput-boolean p2, p0, Lcom/samsung/android/app/galaxyraw/data/BeautyListItem;->mIsSelected:Z

    return-void
.end method


# virtual methods
.method public getCommandId()Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/data/BeautyListItem;->mCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    return-object p0
.end method

.method public getDrawableId()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/data/BeautyListItem;->mResourceIdSet:Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;->getImageResourceId()I

    move-result p0

    return p0
.end method

.method public isSelected()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/data/BeautyListItem;->mIsSelected:Z

    return p0
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

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/data/BeautyListItem;->mIsSelected:Z

    return-void
.end method
