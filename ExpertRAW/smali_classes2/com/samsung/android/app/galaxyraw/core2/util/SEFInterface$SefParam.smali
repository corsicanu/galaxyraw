.class public Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface$SefParam;
.super Ljava/lang/Object;
.source "SEFInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SefParam"
.end annotation


# instance fields
.field public data:[B

.field public dataFileName:Ljava/lang/String;

.field public dataSubInfo:[B

.field public dataType:I

.field public dstFileName:Ljava/lang/String;

.field public dstNativeFd:I

.field public option:I

.field public sefName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;[BLjava/lang/String;[BII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dstFileName",
            "dstNativeFd",
            "sefName",
            "dataSubInfo",
            "dataFileName",
            "data",
            "dataType",
            "option"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface$SefParam;->dstFileName:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface$SefParam;->dstNativeFd:I

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface$SefParam;->sefName:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface$SefParam;->dataSubInfo:[B

    iput-object p5, p0, Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface$SefParam;->dataFileName:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface$SefParam;->data:[B

    iput p7, p0, Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface$SefParam;->dataType:I

    iput p8, p0, Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface$SefParam;->option:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sefName",
            "data",
            "dataType"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface$SefParam;-><init>(Ljava/lang/String;[BII)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sefName",
            "data",
            "dataType",
            "option"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface$SefParam;->sefName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface$SefParam;->data:[B

    iput p3, p0, Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface$SefParam;->dataType:I

    iput p4, p0, Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface$SefParam;->option:I

    return-void
.end method
