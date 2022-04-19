.class public Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;
.super Ljava/lang/Object;
.source "BasicEntity.java"


# instance fields
.field private endDate:Ljava/util/Date;

.field private endIndex:I

.field private entityType:Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$EntityType;

.field private repeatInfo:Ljava/lang/String;

.field private startDate:Ljava/util/Date;

.field private startIndex:I

.field private text:Ljava/lang/String;

.field private unresolvedEndDateTimeUnit:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$DateTimeUnit;",
            ">;"
        }
    .end annotation
.end field

.field private unresolvedStartDateTimeUnit:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$DateTimeUnit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create()Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;

    invoke-direct {v0}, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getEndDateTime()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->endDate:Ljava/util/Date;

    return-object p0
.end method

.method public getEndIndex()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->endIndex:I

    return p0
.end method

.method public getRepeatInfo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->repeatInfo:Ljava/lang/String;

    return-object p0
.end method

.method public getStartDateTime()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->startDate:Ljava/util/Date;

    return-object p0
.end method

.method public getStartIndex()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->startIndex:I

    return p0
.end method

.method public getString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->text:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$EntityType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->entityType:Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$EntityType;

    return-object p0
.end method

.method public getUnresolvedEndDateTimeUnit()Ljava/util/EnumSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$DateTimeUnit;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->unresolvedEndDateTimeUnit:Ljava/util/EnumSet;

    return-object p0
.end method

.method public getUnresolvedStartDateTimeUnit()Ljava/util/EnumSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$DateTimeUnit;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->unresolvedStartDateTimeUnit:Ljava/util/EnumSet;

    return-object p0
.end method

.method public setEndDateTime(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->endDate:Ljava/util/Date;

    return-void
.end method

.method public setEndIndex(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->endIndex:I

    return-void
.end method

.method public setRepeatInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->repeatInfo:Ljava/lang/String;

    return-void
.end method

.method public setStartDateTime(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->startDate:Ljava/util/Date;

    return-void
.end method

.method public setStartIndex(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->startIndex:I

    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->text:Ljava/lang/String;

    return-void
.end method

.method public setType(Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$EntityType;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->entityType:Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$EntityType;

    return-void
.end method

.method public setUnresolvedEndDateTimeUnit(Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$DateTimeUnit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->unresolvedEndDateTimeUnit:Ljava/util/EnumSet;

    return-void
.end method

.method public setUnresolvedStartDateTimeUnit(Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor$DateTimeUnit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntity;->unresolvedStartDateTimeUnit:Ljava/util/EnumSet;

    return-void
.end method
