.class public Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap$ParamAttr;
.super Ljava/lang/Object;
.source "NlgIdMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParamAttr"
.end annotation


# instance fields
.field public attrName:Ljava/lang/String;

.field public attrValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "attrName",
            "attrValue"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap$ParamAttr;->attrName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap$ParamAttr;->attrValue:Ljava/lang/String;

    return-void
.end method
