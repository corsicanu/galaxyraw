.class public Lcom/samsung/context/sdk/samsunganalytics/internal/policy/AppQuota;
.super Ljava/lang/Object;
.source "AppQuota.java"


# instance fields
.field private dataQuota:I

.field private dataUsed:I

.field private loadedSize:I

.field private wifiQuota:I

.field private wifiUsed:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataQuota()I
    .locals 0

    iget p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/AppQuota;->dataQuota:I

    return p0
.end method

.method public getDataUsed()I
    .locals 0

    iget p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/AppQuota;->dataUsed:I

    return p0
.end method

.method public getLoadedSize()I
    .locals 0

    iget p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/AppQuota;->loadedSize:I

    return p0
.end method

.method public getWifiQuota()I
    .locals 0

    iget p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/AppQuota;->wifiQuota:I

    return p0
.end method

.method public getWifiUsed()I
    .locals 0

    iget p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/AppQuota;->wifiUsed:I

    return p0
.end method

.method public setDataQuota(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataQuota"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/AppQuota;->dataQuota:I

    return-void
.end method

.method public setDataUsed(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataUsed"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/AppQuota;->dataUsed:I

    return-void
.end method

.method public setLoadedSize(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loadedSize"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/AppQuota;->loadedSize:I

    return-void
.end method

.method public setWifiQuota(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wifiQuota"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/AppQuota;->wifiQuota:I

    return-void
.end method

.method public setWifiUsed(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wifiUsed"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/AppQuota;->wifiUsed:I

    return-void
.end method
