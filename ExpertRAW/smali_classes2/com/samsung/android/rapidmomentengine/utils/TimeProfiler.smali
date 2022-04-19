.class public Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;
.super Ljava/lang/Object;
.source "TimeProfiler.java"


# static fields
.field public static final DEINIT_API_NAME:Ljava/lang/String; = "DeInit"

.field private static DUMP_TIME_PROFILE_TO_FILE:Z = false

.field public static final FILTER_API_NAME:Ljava/lang/String; = "Filter"

.field public static final INIT_API_NAME:Ljava/lang/String; = "Init"

.field private static LOG_TIME_PROFILE:Z = true

.field private static final MAX_COUNT:I = 0x64

.field public static final PROCESS_API_NAME:Ljava/lang/String; = "Process"

.field public static final RM_PROFILE_TAG_ASYNC:Ljava/lang/String; = "RapidMomentAsync"

.field public static final RM_PROFILE_TAG_SYNC:Ljava/lang/String; = "RapidMomentSync"

.field private static final TAG:Ljava/lang/String; = "TimeProfiler"

.field private static mCurIndex:I = -0x1

.field private static mEndTime:[J

.field private static mLogFile:Ljava/io/File;

.field private static mStartTime:[J

.field private static mTAG:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x64

    new-array v1, v0, [J

    sput-object v1, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->mStartTime:[J

    new-array v1, v0, [J

    sput-object v1, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->mEndTime:[J

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->mTAG:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static endTimeTrace()V
    .locals 8

    sget-boolean v0, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->LOG_TIME_PROFILE:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->mCurIndex:I

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_1

    sget-object v0, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->TAG:Ljava/lang/String;

    const-string v1, "Buffer Limit Reached"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-object v1, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->mEndTime:[J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    aput-wide v2, v1, v0

    sget-object v0, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->mEndTime:[J

    sget v1, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->mCurIndex:I

    aget-wide v2, v0, v1

    sget-object v0, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->mStartTime:[J

    aget-wide v0, v0, v1

    sub-long/2addr v2, v0

    sget-object v0, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->mTAG:[Ljava/lang/String;

    sget v6, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->mCurIndex:I

    aget-object v5, v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ": "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/32 v6, 0xf4240

    div-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " ms"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->mTAG:[Ljava/lang/String;

    sget v4, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->mCurIndex:I

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->logToFile(Ljava/lang/String;)V

    sget v0, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->mCurIndex:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->mCurIndex:I

    return-void
.end method

.method public static getTimeStamp()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private static logToFile(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->mLogFile:Ljava/io/File;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    sget-object v2, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->mLogFile:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0, p0}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    :goto_0
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filewrite error - Handled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static printElapsedTime(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    move-wide v0, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->printTimeTaken(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static printTimeTaken(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->LOG_TIME_PROFILE:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, " "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    sub-long/2addr p2, p0

    sget-object p0, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Time for "

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p6, ": "

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-wide/32 v0, 0xf4240

    div-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->logToFile(Ljava/lang/String;)V

    return-void
.end method

.method public static startFileLogger(Ljava/io/File;)V
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->DUMP_TIME_PROFILE_TO_FILE:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "time_profile_log.txt"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->mLogFile:Ljava/io/File;

    :cond_1
    :goto_0
    return-void
.end method

.method public static startTimeTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-boolean v0, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->LOG_TIME_PROFILE:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->mCurIndex:I

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_1

    sget-object p0, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->TAG:Ljava/lang/String;

    const-string p1, "Buffer Limit Reached"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->mCurIndex:I

    sget-object v1, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->mStartTime:[J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    aput-wide v2, v1, v0

    sget-object v0, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->mTAG:[Ljava/lang/String;

    sget v1, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->mCurIndex:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, " "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    return-void
.end method

.method public static stopFileLogger()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->mLogFile:Ljava/io/File;

    return-void
.end method
