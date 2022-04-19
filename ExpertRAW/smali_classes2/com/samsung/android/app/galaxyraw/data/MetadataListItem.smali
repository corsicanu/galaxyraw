.class public Lcom/samsung/android/app/galaxyraw/data/MetadataListItem;
.super Ljava/lang/Object;
.source "MetadataListItem.java"


# instance fields
.field private final mDescription1:Ljava/lang/String;

.field private final mDescription2:Ljava/lang/String;

.field private mHeading:Ljava/lang/String;

.field private final mIcon:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "icon",
            "heading",
            "description1",
            "description2"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/data/MetadataListItem;->mIcon:I

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/data/MetadataListItem;->mHeading:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/data/MetadataListItem;->mDescription1:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/data/MetadataListItem;->mDescription2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDescription1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/data/MetadataListItem;->mDescription1:Ljava/lang/String;

    return-object p0
.end method

.method public getDescription2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/data/MetadataListItem;->mDescription2:Ljava/lang/String;

    return-object p0
.end method

.method public getHeading()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/data/MetadataListItem;->mHeading:Ljava/lang/String;

    return-object p0
.end method

.method public getIcon()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/data/MetadataListItem;->mIcon:I

    return p0
.end method

.method public setHeading(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "heading"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/data/MetadataListItem;->mHeading:Ljava/lang/String;

    return-void
.end method
