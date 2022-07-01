.class Lccsancom/vungle/warren/log/LogPersister;
.super Ljava/lang/Object;
.source "LogPersister.java"


# static fields
.field private static final SDK_CRASH_LOG_FILE_PATTERN:Ljava/lang/String; = "crash_"

.field private static final SDK_LOGS_DIR:Ljava/lang/String; = "sdk_logs"

.field private static final SDK_LOG_FILE_CRASH:Ljava/lang/String; = "_crash"

.field private static final SDK_LOG_FILE_PATTERN:Ljava/lang/String; = "log_"

.field private static final SDK_LOG_FILE_PENDING:Ljava/lang/String; = "_pending"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private entryCount:I

.field private listener:Lccsancom/vungle/warren/log/LogManager$SdkLoggingEventListener;

.field private logDir:Ljava/io/File;

.field private logFile:Ljava/io/File;

.field private maximumEntries:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lccsancom/vungle/warren/log/LogPersister;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/vungle/warren/log/LogPersister;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "cacheDir"    # Ljava/io/File;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/16 v0, 0x64

    iput v0, p0, Lccsancom/vungle/warren/log/LogPersister;->maximumEntries:I

    .line 74
    if-eqz p1, :cond_0

    .line 75
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/log/LogPersister;->getOrCreateLogDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lccsancom/vungle/warren/log/LogPersister;->logDir:Ljava/io/File;

    .line 76
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0, v0}, Lccsancom/vungle/warren/log/LogPersister;->getOrCreateLogFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lccsancom/vungle/warren/log/LogPersister;->logFile:Ljava/io/File;

    .line 80
    :cond_0
    return-void
.end method

.method private createFileOrDirectory(Ljava/io/File;Ljava/lang/String;Z)Ljava/io/File;
    .locals 5
    .param p1, "parentDir"    # Ljava/io/File;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "isDir"    # Z

    .line 225
    const/4 v0, 0x0

    .line 226
    .local v0, "ret":Z
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 227
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 228
    if-nez p3, :cond_0

    .line 230
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 233
    :goto_0
    goto :goto_1

    .line 231
    :catch_0
    move-exception v2

    .line 232
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Lccsancom/vungle/warren/log/LogPersister;->TAG:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4, v2}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 235
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v0

    goto :goto_1

    .line 238
    :cond_1
    const/4 v0, 0x1

    .line 241
    :goto_1
    if-eqz v0, :cond_2

    move-object v2, v1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    return-object v2
.end method

.method private static getDateText(J)Ljava/lang/String;
    .locals 3
    .param p0, "time"    # J

    .line 276
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 277
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static getFileLineCount(Ljava/lang/String;)I
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;

    .line 262
    const/4 v0, 0x0

    .line 264
    .local v0, "reader":Ljava/io/LineNumberReader;
    :try_start_0
    new-instance v1, Ljava/io/LineNumberReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v1

    .line 265
    :goto_0
    invoke-virtual {v0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 266
    :cond_0
    invoke-virtual {v0}, Ljava/io/LineNumberReader;->getLineNumber()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v1, "cnt":I
    goto :goto_1

    .line 270
    .end local v1    # "cnt":I
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lccsancom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 271
    throw v1

    .line 267
    :catch_0
    move-exception v1

    .line 268
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v1, -0x1

    .line 270
    .local v1, "cnt":I
    :goto_1
    invoke-static {v0}, Lccsancom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 271
    nop

    .line 272
    return v1
.end method

.method private getOrCreateLogDir(Ljava/io/File;)Ljava/io/File;
    .locals 3
    .param p1, "baseDir"    # Ljava/io/File;

    .line 168
    const-string v0, "sdk_logs"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lccsancom/vungle/warren/log/LogPersister;->createFileOrDirectory(Ljava/io/File;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    .line 169
    .local v0, "logDir":Ljava/io/File;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    return-object v0

    .line 170
    :cond_1
    :goto_0
    sget-object v1, Lccsancom/vungle/warren/log/LogPersister;->TAG:Ljava/lang/String;

    const-string v2, "Failed to create vungle logs dir"

    invoke-static {v1, v2}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v1, 0x0

    return-object v1
.end method

.method private renameFile(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3
    .param p1, "srcFile"    # Ljava/io/File;
    .param p2, "destFileName"    # Ljava/lang/String;

    .line 246
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 250
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lccsancom/vungle/warren/log/LogPersister;->logDir:Ljava/io/File;

    invoke-direct {v0, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 251
    .local v0, "destFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 252
    return v1

    .line 255
    :cond_1
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    .line 257
    .local v1, "ret":Z
    return v1

    .line 247
    .end local v0    # "destFile":Ljava/io/File;
    .end local v1    # "ret":Z
    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method getCrashReportFiles(I)[Ljava/io/File;
    .locals 3
    .param p1, "crashBatchMax"    # I

    .line 282
    iget-object v0, p0, Lccsancom/vungle/warren/log/LogPersister;->logDir:Ljava/io/File;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 283
    sget-object v0, Lccsancom/vungle/warren/log/LogPersister;->TAG:Ljava/lang/String;

    const-string v2, "No log cache dir found."

    invoke-static {v0, v2}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return-object v1

    .line 287
    :cond_0
    new-instance v2, Lccsancom/vungle/warren/log/LogPersister$4;

    invoke-direct {v2, p0}, Lccsancom/vungle/warren/log/LogPersister$4;-><init>(Lccsancom/vungle/warren/log/LogPersister;)V

    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 294
    .local v0, "crashFiles":[Ljava/io/File;
    if-eqz v0, :cond_2

    array-length v2, v0

    if-nez v2, :cond_1

    goto :goto_0

    .line 298
    :cond_1
    new-instance v1, Lccsancom/vungle/warren/log/LogPersister$5;

    invoke-direct {v1, p0}, Lccsancom/vungle/warren/log/LogPersister$5;-><init>(Lccsancom/vungle/warren/log/LogPersister;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 305
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/io/File;

    return-object v1

    .line 295
    :cond_2
    :goto_0
    return-object v1
.end method

.method getOrCreateLogFile(Ljava/io/File;)Ljava/io/File;
    .locals 7
    .param p1, "logDir"    # Ljava/io/File;

    .line 178
    new-instance v0, Lccsancom/vungle/warren/log/LogPersister$2;

    invoke-direct {v0, p0}, Lccsancom/vungle/warren/log/LogPersister$2;-><init>(Lccsancom/vungle/warren/log/LogPersister;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 185
    .local v0, "logFiles":[Ljava/io/File;
    const/4 v1, 0x0

    if-eqz v0, :cond_5

    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_2

    .line 191
    :cond_0
    new-instance v2, Lccsancom/vungle/warren/log/LogPersister$3;

    invoke-direct {v2, p0}, Lccsancom/vungle/warren/log/LogPersister$3;-><init>(Lccsancom/vungle/warren/log/LogPersister;)V

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 198
    aget-object v1, v0, v1

    .line 199
    .local v1, "loggingFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lccsancom/vungle/warren/log/LogPersister;->getFileLineCount(Ljava/lang/String;)I

    move-result v2

    .line 200
    .local v2, "lineCount":I
    if-lez v2, :cond_4

    iget v3, p0, Lccsancom/vungle/warren/log/LogPersister;->maximumEntries:I

    if-ge v2, v3, :cond_1

    goto :goto_1

    .line 204
    :cond_1
    const/4 v3, 0x0

    .line 206
    .local v3, "newLoggingFile":Ljava/io/File;
    :try_start_0
    iget-object v4, p0, Lccsancom/vungle/warren/log/LogPersister;->logFile:Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lccsancom/vungle/warren/log/LogPersister;->logFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_pending"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lccsancom/vungle/warren/log/LogPersister;->renameFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v4

    .line 207
    .local v4, "pendingSucceed":Z
    if-eqz v4, :cond_2

    .line 208
    invoke-virtual {p0, p1}, Lccsancom/vungle/warren/log/LogPersister;->getOrCreateLogFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v5

    .line 211
    .end local v4    # "pendingSucceed":Z
    :cond_2
    goto :goto_0

    .line 210
    :catch_0
    move-exception v4

    .line 213
    :goto_0
    if-nez v3, :cond_3

    .line 214
    move-object v3, v1

    .line 215
    iput v2, p0, Lccsancom/vungle/warren/log/LogPersister;->entryCount:I

    .line 218
    :cond_3
    return-object v3

    .line 201
    .end local v3    # "newLoggingFile":Ljava/io/File;
    :cond_4
    :goto_1
    iput v2, p0, Lccsancom/vungle/warren/log/LogPersister;->entryCount:I

    .line 202
    return-object v1

    .line 186
    .end local v1    # "loggingFile":Ljava/io/File;
    .end local v2    # "lineCount":I
    :cond_5
    :goto_2
    iput v1, p0, Lccsancom/vungle/warren/log/LogPersister;->entryCount:I

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "log_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, "logFileName":Ljava/lang/String;
    invoke-direct {p0, p1, v2, v1}, Lccsancom/vungle/warren/log/LogPersister;->createFileOrDirectory(Ljava/io/File;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method getPendingFiles()[Ljava/io/File;
    .locals 2

    .line 153
    iget-object v0, p0, Lccsancom/vungle/warren/log/LogPersister;->logDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 154
    sget-object v0, Lccsancom/vungle/warren/log/LogPersister;->TAG:Ljava/lang/String;

    const-string v1, "No log cache dir found."

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v0, 0x0

    return-object v0

    .line 158
    :cond_0
    new-instance v1, Lccsancom/vungle/warren/log/LogPersister$1;

    invoke-direct {v1, p0}, Lccsancom/vungle/warren/log/LogPersister$1;-><init>(Lccsancom/vungle/warren/log/LogPersister;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public saveCrashLogData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "logLevel"    # Ljava/lang/String;
    .param p3, "context"    # Ljava/lang/String;
    .param p4, "eventID"    # Ljava/lang/String;
    .param p5, "userAgent"    # Ljava/lang/String;
    .param p6, "bundleID"    # Ljava/lang/String;
    .param p7, "customData"    # Ljava/lang/String;
    .param p8, "exClass"    # Ljava/lang/String;
    .param p9, "threadId"    # Ljava/lang/String;

    .line 311
    move-object/from16 v1, p0

    iget-object v0, v1, Lccsancom/vungle/warren/log/LogPersister;->logDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 312
    sget-object v0, Lccsancom/vungle/warren/log/LogPersister;->TAG:Ljava/lang/String;

    const-string v2, "No log cache dir found."

    invoke-static {v0, v2}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return-void

    .line 316
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v14

    .line 317
    .local v14, "timeZone":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lccsancom/vungle/warren/log/LogPersister;->getDateText(J)Ljava/lang/String;

    move-result-object v15

    .line 318
    .local v15, "creationDate":Ljava/lang/String;
    new-instance v0, Lccsancom/vungle/warren/log/LogEntry;

    move-object v2, v0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object v9, v14

    move-object v10, v15

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    invoke-direct/range {v2 .. v13}, Lccsancom/vungle/warren/log/LogEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    .local v2, "logEntry":Lccsancom/vungle/warren/log/LogEntry;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "crash_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 322
    .local v3, "crashFileName":Ljava/lang/String;
    iget-object v0, v1, Lccsancom/vungle/warren/log/LogPersister;->logDir:Ljava/io/File;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v3, v4}, Lccsancom/vungle/warren/log/LogPersister;->createFileOrDirectory(Ljava/io/File;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v4

    .line 323
    .local v4, "crashFile":Ljava/io/File;
    if-eqz v4, :cond_1

    .line 324
    const/4 v5, 0x1

    .line 325
    .local v5, "saveSucceed":Z
    const/4 v6, 0x0

    .line 327
    .local v6, "fileWriter":Ljava/io/FileWriter;
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    const/4 v7, 0x1

    invoke-direct {v0, v4, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    move-object v6, v0

    .line 328
    invoke-virtual {v2}, Lccsancom/vungle/warren/log/LogEntry;->toJsonString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 329
    invoke-virtual {v6}, Ljava/io/FileWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 334
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    sget-object v7, Lccsancom/vungle/warren/log/LogPersister;->TAG:Ljava/lang/String;

    const-string v8, "Failed to write crash log."

    invoke-static {v7, v8}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    const/4 v5, 0x0

    .line 334
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    invoke-static {v6}, Lccsancom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 335
    nop

    .line 337
    if-eqz v5, :cond_1

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_crash"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Lccsancom/vungle/warren/log/LogPersister;->renameFile(Ljava/io/File;Ljava/lang/String;)Z

    goto :goto_2

    .line 334
    :goto_1
    invoke-static {v6}, Lccsancom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 335
    throw v0

    .line 341
    .end local v5    # "saveSucceed":Z
    .end local v6    # "fileWriter":Ljava/io/FileWriter;
    :cond_1
    :goto_2
    return-void
.end method

.method saveLogData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "logLevel"    # Ljava/lang/String;
    .param p3, "context"    # Ljava/lang/String;
    .param p4, "eventID"    # Ljava/lang/String;
    .param p5, "userAgent"    # Ljava/lang/String;
    .param p6, "bundleID"    # Ljava/lang/String;
    .param p7, "customData"    # Ljava/lang/String;
    .param p8, "exClass"    # Ljava/lang/String;
    .param p9, "threadId"    # Ljava/lang/String;

    .line 96
    move-object/from16 v1, p0

    iget-object v0, v1, Lccsancom/vungle/warren/log/LogPersister;->logDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 97
    sget-object v0, Lccsancom/vungle/warren/log/LogPersister;->TAG:Ljava/lang/String;

    const-string v2, "No log cache dir found."

    invoke-static {v0, v2}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void

    .line 101
    :cond_0
    iget-object v0, v1, Lccsancom/vungle/warren/log/LogPersister;->logFile:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 102
    :cond_1
    sget-object v0, Lccsancom/vungle/warren/log/LogPersister;->TAG:Ljava/lang/String;

    const-string v2, "current log file maybe deleted, create new one."

    invoke-static {v0, v2}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v2, v1, Lccsancom/vungle/warren/log/LogPersister;->logDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Lccsancom/vungle/warren/log/LogPersister;->getOrCreateLogFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    iput-object v2, v1, Lccsancom/vungle/warren/log/LogPersister;->logFile:Ljava/io/File;

    .line 104
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_2

    .line 110
    :cond_2
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v14

    .line 111
    .local v14, "timeZone":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lccsancom/vungle/warren/log/LogPersister;->getDateText(J)Ljava/lang/String;

    move-result-object v15

    .line 112
    .local v15, "creationDate":Ljava/lang/String;
    new-instance v0, Lccsancom/vungle/warren/log/LogEntry;

    move-object v2, v0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object v9, v14

    move-object v10, v15

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    invoke-direct/range {v2 .. v13}, Lccsancom/vungle/warren/log/LogEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .local v2, "logEntry":Lccsancom/vungle/warren/log/LogEntry;
    const/4 v3, 0x1

    .line 116
    .local v3, "saveSucceed":Z
    const/4 v4, 0x0

    .line 118
    .local v4, "fileWriter":Ljava/io/FileWriter;
    const/4 v5, 0x1

    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    iget-object v6, v1, Lccsancom/vungle/warren/log/LogPersister;->logFile:Ljava/io/File;

    invoke-direct {v0, v6, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    move-object v4, v0

    .line 119
    iget v0, v1, Lccsancom/vungle/warren/log/LogPersister;->entryCount:I

    if-lez v0, :cond_3

    .line 120
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 122
    :cond_3
    invoke-virtual {v2}, Lccsancom/vungle/warren/log/LogEntry;->toJsonString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 123
    invoke-virtual {v4}, Ljava/io/FileWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    sget-object v6, Lccsancom/vungle/warren/log/LogPersister;->TAG:Ljava/lang/String;

    const-string v7, "Failed to write sdk logs."

    invoke-static {v6, v7}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    const/4 v3, 0x0

    .line 128
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    invoke-static {v4}, Lccsancom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 129
    nop

    .line 131
    if-eqz v3, :cond_5

    .line 132
    iget v0, v1, Lccsancom/vungle/warren/log/LogPersister;->entryCount:I

    add-int/2addr v0, v5

    iput v0, v1, Lccsancom/vungle/warren/log/LogPersister;->entryCount:I

    .line 133
    iget v5, v1, Lccsancom/vungle/warren/log/LogPersister;->maximumEntries:I

    if-lt v0, v5, :cond_5

    .line 134
    iget-object v0, v1, Lccsancom/vungle/warren/log/LogPersister;->logFile:Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lccsancom/vungle/warren/log/LogPersister;->logFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_pending"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v0, v5}, Lccsancom/vungle/warren/log/LogPersister;->renameFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    .line 135
    .local v0, "pendingSucceed":Z
    if-eqz v0, :cond_4

    .line 136
    iget-object v5, v1, Lccsancom/vungle/warren/log/LogPersister;->logDir:Ljava/io/File;

    invoke-virtual {v1, v5}, Lccsancom/vungle/warren/log/LogPersister;->getOrCreateLogFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    iput-object v5, v1, Lccsancom/vungle/warren/log/LogPersister;->logFile:Ljava/io/File;

    .line 140
    :cond_4
    iget-object v5, v1, Lccsancom/vungle/warren/log/LogPersister;->listener:Lccsancom/vungle/warren/log/LogManager$SdkLoggingEventListener;

    if-eqz v5, :cond_5

    .line 141
    invoke-interface {v5}, Lccsancom/vungle/warren/log/LogManager$SdkLoggingEventListener;->sendPendingLogs()V

    .line 146
    .end local v0    # "pendingSucceed":Z
    :cond_5
    return-void

    .line 128
    :goto_1
    invoke-static {v4}, Lccsancom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 129
    throw v0

    .line 105
    .end local v2    # "logEntry":Lccsancom/vungle/warren/log/LogEntry;
    .end local v3    # "saveSucceed":Z
    .end local v4    # "fileWriter":Ljava/io/FileWriter;
    .end local v14    # "timeZone":Ljava/lang/String;
    .end local v15    # "creationDate":Ljava/lang/String;
    :cond_6
    :goto_2
    const-string v2, "Can\'t create log file, maybe no space left."

    invoke-static {v0, v2}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void
.end method

.method setMaximumEntries(I)V
    .locals 0
    .param p1, "maximumEntries"    # I

    .line 87
    if-gtz p1, :cond_0

    .line 88
    const/16 p1, 0x64

    .line 90
    :cond_0
    iput p1, p0, Lccsancom/vungle/warren/log/LogPersister;->maximumEntries:I

    .line 91
    return-void
.end method

.method setSdkLoggingEventListener(Lccsancom/vungle/warren/log/LogManager$SdkLoggingEventListener;)V
    .locals 0
    .param p1, "listener"    # Lccsancom/vungle/warren/log/LogManager$SdkLoggingEventListener;

    .line 83
    iput-object p1, p0, Lccsancom/vungle/warren/log/LogPersister;->listener:Lccsancom/vungle/warren/log/LogManager$SdkLoggingEventListener;

    .line 84
    return-void
.end method
