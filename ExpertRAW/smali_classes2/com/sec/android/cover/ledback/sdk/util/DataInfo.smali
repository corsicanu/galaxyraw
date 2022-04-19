.class public Lcom/sec/android/cover/ledback/sdk/util/DataInfo;
.super Ljava/lang/Object;
.source "DataInfo.java"


# instance fields
.field private mEffectType:I

.field private mEnable:Z

.field private mFuntion:I

.field private mIconData:Ljava/lang/String;

.field private mIconId:I

.field private mLingtingTimeOut:I

.field private mType:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/cover/ledback/sdk/util/DataInfo;->mFuntion:I

    iput p2, p0, Lcom/sec/android/cover/ledback/sdk/util/DataInfo;->mType:I

    iput-boolean p3, p0, Lcom/sec/android/cover/ledback/sdk/util/DataInfo;->mEnable:Z

    return-void
.end method

.method public constructor <init>(IIZILjava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/cover/ledback/sdk/util/DataInfo;->mFuntion:I

    iput p2, p0, Lcom/sec/android/cover/ledback/sdk/util/DataInfo;->mType:I

    iput-boolean p3, p0, Lcom/sec/android/cover/ledback/sdk/util/DataInfo;->mEnable:Z

    iput p4, p0, Lcom/sec/android/cover/ledback/sdk/util/DataInfo;->mIconId:I

    iput-object p5, p0, Lcom/sec/android/cover/ledback/sdk/util/DataInfo;->mIconData:Ljava/lang/String;

    iput p6, p0, Lcom/sec/android/cover/ledback/sdk/util/DataInfo;->mLingtingTimeOut:I

    iput p7, p0, Lcom/sec/android/cover/ledback/sdk/util/DataInfo;->mEffectType:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    check-cast p1, Lcom/sec/android/cover/ledback/sdk/util/DataInfo;

    iget p0, p0, Lcom/sec/android/cover/ledback/sdk/util/DataInfo;->mType:I

    invoke-virtual {p1}, Lcom/sec/android/cover/ledback/sdk/util/DataInfo;->getType()I

    move-result p1

    if-eq p0, p1, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public getEffectType()I
    .locals 0

    iget p0, p0, Lcom/sec/android/cover/ledback/sdk/util/DataInfo;->mEffectType:I

    return p0
.end method

.method public getFuntion()I
    .locals 0

    iget p0, p0, Lcom/sec/android/cover/ledback/sdk/util/DataInfo;->mFuntion:I

    return p0
.end method

.method public getIconData()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/cover/ledback/sdk/util/DataInfo;->mIconData:Ljava/lang/String;

    return-object p0
.end method

.method public getIconId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/cover/ledback/sdk/util/DataInfo;->mIconId:I

    return p0
.end method

.method public getLingtingTimeOut()I
    .locals 0

    iget p0, p0, Lcom/sec/android/cover/ledback/sdk/util/DataInfo;->mLingtingTimeOut:I

    return p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/sec/android/cover/ledback/sdk/util/DataInfo;->mType:I

    return p0
.end method

.method public isEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/cover/ledback/sdk/util/DataInfo;->mEnable:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataInfo [mFuntion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/cover/ledback/sdk/util/DataInfo;->mFuntion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/cover/ledback/sdk/util/DataInfo;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/cover/ledback/sdk/util/DataInfo;->mEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIconId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/cover/ledback/sdk/util/DataInfo;->mIconId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIconData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/ledback/sdk/util/DataInfo;->mIconData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLingtingTimeOut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/sec/android/cover/ledback/sdk/util/DataInfo;->mLingtingTimeOut:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
