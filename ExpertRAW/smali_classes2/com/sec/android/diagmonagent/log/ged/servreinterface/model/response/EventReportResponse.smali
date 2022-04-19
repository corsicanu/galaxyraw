.class public Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/EventReportResponse;
.super Ljava/lang/Object;
.source "EventReportResponse.java"


# instance fields
.field private eventId:Ljava/lang/String;

.field private preSignedURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEventId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/EventReportResponse;->eventId:Ljava/lang/String;

    return-object p0
.end method

.method public getPreSignedURL()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/EventReportResponse;->preSignedURL:Ljava/lang/String;

    return-object p0
.end method

.method public setEventId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventId"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/EventReportResponse;->eventId:Ljava/lang/String;

    return-void
.end method

.method public setPreSignedURL(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preSignedURL"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/ged/servreinterface/model/response/EventReportResponse;->preSignedURL:Ljava/lang/String;

    return-void
.end method
