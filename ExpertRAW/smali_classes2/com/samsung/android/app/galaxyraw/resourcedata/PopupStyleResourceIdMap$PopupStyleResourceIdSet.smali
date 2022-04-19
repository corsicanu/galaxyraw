.class public Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap$PopupStyleResourceIdSet;
.super Ljava/lang/Object;
.source "PopupStyleResourceIdMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PopupStyleResourceIdSet"
.end annotation


# instance fields
.field private mStyleResId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "styleResId"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap$PopupStyleResourceIdSet;->mStyleResId:I

    return-void
.end method


# virtual methods
.method public getStyleResId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap$PopupStyleResourceIdSet;->mStyleResId:I

    return p0
.end method
