.class public Lcom/samsung/android/app/galaxyraw/data/BokehEffectItem;
.super Ljava/lang/Object;
.source "BokehEffectItem.java"


# instance fields
.field private final mCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

.field private final mResourceIdSet:Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resourceIdSet",
            "commandId"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/data/BokehEffectItem;->mResourceIdSet:Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/data/BokehEffectItem;->mCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    return-void
.end method


# virtual methods
.method public getCommandId()Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/data/BokehEffectItem;->mCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    return-object p0
.end method

.method public getResourceIdSet()Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/data/BokehEffectItem;->mResourceIdSet:Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    return-object p0
.end method
