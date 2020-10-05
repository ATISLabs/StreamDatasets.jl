const defdir = joinpath(dirname(@__FILE__), "..", "datasets")

function get_usp_data(dir)
       mkpath(joinpath(defdir, "real"))
       path = download("http://sites.labic.icmc.usp.br/vsouza/repository/usp-stream-data.zip")
    mv(path, joinpath(defdir, "real/usp-stream-data.zip"))
    run(`7z x datasets/real/usp-stream-data.zip -odatasets/real/`)
end

function dataset_airlines(batch::Int)::EasyStream.BatchStream
    filename = "$(defdir)/real/repository/airlines.arff"

    isfile(filename) || get_usp_data(defdir)

    data = ARFFFiles.load(DataFrame,filename)

    conn = EasyStream.TablesConnector(data)

    stream = EasyStream.BatchStream(conn, batch = batch)

    return stream
end

function dataset_chess(batch::Int)::EasyStream.BatchStream
    filename = "$(defdir)/real/repository/chess.arff"

    isfile(filename) || get_usp_data(defdir)

    data = ARFFFiles.load(DataFrame,filename)

    conn = EasyStream.TablesConnector(data)

    stream = EasyStream.BatchStream(conn, batch = batch)

    return stream
end

function dataset_covtype(batch::Int)::EasyStream.BatchStream
    filename = "$(defdir)/real/repository/covtype.arff"

    isfile(filename) || get_usp_data(defdir)

    data = ARFFFiles.load(DataFrame,filename)

    conn = EasyStream.TablesConnector(data)

    stream = EasyStream.BatchStream(conn, batch = batch)

    return stream
end

function dataset_elec(batch::Int)::EasyStream.BatchStream
    filename = "$(defdir)/real/repository/elec.arff"

    isfile(filename) || get_usp_data(defdir)

    data = ARFFFiles.load(DataFrame,filename)

    conn = EasyStream.TablesConnector(data)

    stream = EasyStream.BatchStream(conn, batch = batch)

    return stream
end

function dataset_gassensor(batch::Int)::EasyStream.BatchStream
    filename = "$(defdir)/real/repository/gassensor.arff"

    isfile(filename) || get_usp_data(defdir)

    data = ARFFFiles.load(DataFrame,filename)

    conn = EasyStream.TablesConnector(data)

    stream = EasyStream.BatchStream(conn, batch = batch)

    return stream
end

function dataset_kddcup99(batch::Int)::EasyStream.BatchStream
    filename = "$(defdir)/real/repository/kddcup99.arff"

    isfile(filename) || get_usp_data(defdir)

    data = ARFFFiles.load(DataFrame,filename)

    conn = EasyStream.TablesConnector(data)

    stream = EasyStream.BatchStream(conn, batch = batch)

    return stream
end

function dataset_keystroke(batch::Int)::EasyStream.BatchStream
    filename = "$(defdir)/real/repository/keystroke.arff"

    isfile(filename) || get_usp_data(defdir)

    data = ARFFFiles.load(DataFrame,filename)

    conn = EasyStream.TablesConnector(data)

    stream = EasyStream.BatchStream(conn, batch = batch)

    return stream
end

function dataset_luxembourg(batch::Int)::EasyStream.BatchStream
    filename = "$(defdir)/real/repository/luxembourg.arff"

    isfile(filename) || get_usp_data(defdir)

    data = ARFFFiles.load(DataFrame,filename)

    conn = EasyStream.TablesConnector(data)

    stream = EasyStream.BatchStream(conn, batch = batch)

    return stream
end

function dataset_NOAA(batch::Int)::EasyStream.BatchStream
    filename = "$(defdir)/real/repository/NOAA.arff"

    isfile(filename) || get_usp_data(defdir)

    data = ARFFFiles.load(DataFrame,filename)

    conn = EasyStream.TablesConnector(data)

    stream = EasyStream.BatchStream(conn, batch = batch)

    return stream
end

function dataset_outdoor(batch::Int)::EasyStream.BatchStream
    filename = "$(defdir)/real/repository/outdoor.arff"

    isfile(filename) || get_usp_data(defdir)

    data = ARFFFiles.load(DataFrame,filename)

    conn = EasyStream.TablesConnector(data)

    stream = EasyStream.BatchStream(conn, batch = batch)

    return stream
end

function dataset_ozone(batch::Int)::EasyStream.BatchStream
    filename = "$(defdir)/real/repository/ozone.arff"

    isfile(filename) || get_usp_data(defdir)

    data = ARFFFiles.load(DataFrame,filename)

    conn = EasyStream.TablesConnector(data)

    stream = EasyStream.BatchStream(conn, batch = batch)

    return stream
end

function dataset_power_lsn(batch::Int)::EasyStream.BatchStream
    filename = "$(defdir)/real/repository/power-lsn.arff"

    isfile(filename) || get_usp_data(defdir)

    data = ARFFFiles.load(DataFrame,filename)

    conn = EasyStream.TablesConnector(data)

    stream = EasyStream.BatchStream(conn, batch = batch)

    return stream
end

function dataset_poker_lsn(batch::Int)::EasyStream.BatchStream
    filename = "$(defdir)/real/repository/poker-lsn.arff"

    isfile(filename) || get_usp_data(defdir)

    data = ARFFFiles.load(DataFrame,filename)

    conn = EasyStream.TablesConnector(data)

    stream = EasyStream.BatchStream(conn, batch = batch)

    return stream
end

function dataset_powersupply(batch::Int)::EasyStream.BatchStream
    filename = "$(defdir)/real/repository/powersupply.arff"

    isfile(filename) || get_usp_data(defdir)

    data = ARFFFiles.load(DataFrame,filename)

    conn = EasyStream.TablesConnector(data)

    stream = EasyStream.BatchStream(conn, batch = batch)

    return stream
end

function dataset_rialto(batch::Int)::EasyStream.BatchStream
    filename = "$(defdir)/real/repository/rialto.arff"

    isfile(filename) || get_usp_data(defdir)

    data = ARFFFiles.load(DataFrame,filename)

    conn = EasyStream.TablesConnector(data)

    stream = EasyStream.BatchStream(conn, batch = batch)

    return stream
end

function dataset_sensorstream(batch::Int)::EasyStream.BatchStream
    filename = "$(defdir)/real/repository/sensorstream.arff"

    isfile(filename) || get_usp_data(defdir)

    data = ARFFFiles.load(DataFrame,filename)

    conn = EasyStream.TablesConnector(data)

    stream = EasyStream.BatchStream(conn, batch = batch)

    return stream
end

function dataset_spam_assassin(batch::Int)::EasyStream.BatchStream
    filename = "$(defdir)/real/repository/SpamAssassin.arff"

    isfile(filename) || get_usp_data(defdir)

    data = ARFFFiles.load(DataFrame,filename)

    conn = EasyStream.TablesConnector(data)

    stream = EasyStream.BatchStream(conn, batch = batch)

    return stream
end

function dataset_insect_1(batch::Int)::EasyStream.BatchStream
    filename = "$(defdir)/real/repository/INSECTS-abrupt_balanced_norm.arff"

    isfile(filename) || get_usp_data(defdir)

    data = ARFFFiles.load(DataFrame,filename)

    conn = EasyStream.TablesConnector(data)

    stream = EasyStream.BatchStream(conn, batch = batch)

    return stream
end

function dataset_insect_2(batch::Int)::EasyStream.BatchStream
    filename = "$(defdir)/real/repository/INSECTS-abrupt_imbalanced_norm.arff"

    isfile(filename) || get_usp_data(defdir)

    data = ARFFFiles.load(DataFrame,filename)

    conn = EasyStream.TablesConnector(data)

    stream = EasyStream.BatchStream(conn, batch = batch)

    return stream
end

function dataset_insect_3(batch::Int)::EasyStream.BatchStream
    filename = "$(defdir)/real/repository/INSECTS-gradual_balanced_norm.arff"

    isfile(filename) || get_usp_data(defdir)

    data = ARFFFiles.load(DataFrame,filename)

    conn = EasyStream.TablesConnector(data)

    stream = EasyStream.BatchStream(conn, batch = batch)

    return stream
end

function dataset_insect_4(batch::Int)::EasyStream.BatchStream
    filename = "$(defdir)/real/repository/INSECTS-gradual_imbalanced_norm.arff"

    isfile(filename) || get_usp_data(defdir)

    data = ARFFFiles.load(DataFrame,filename)

    conn = EasyStream.TablesConnector(data)

    stream = EasyStream.BatchStream(conn, batch = batch)

    return stream
end

function dataset_insect_5(batch::Int)::EasyStream.BatchStream
    filename = "$(defdir)/real/repository/INSECTS-incremental_balanced_norm.arff"

    isfile(filename) || get_usp_data(defdir)

    data = ARFFFiles.load(DataFrame,filename)

    conn = EasyStream.TablesConnector(data)

    stream = EasyStream.BatchStream(conn, batch = batch)

    return stream
end

function dataset_insect_6(batch::Int)::EasyStream.BatchStream
    filename = "$(defdir)/real/repository/INSECTS-incremental_imbalanced_norm.arff"

    isfile(filename) || get_usp_data(defdir)

    data = ARFFFiles.load(DataFrame,filename)

    conn = EasyStream.TablesConnector(data)

    stream = EasyStream.BatchStream(conn, batch = batch)

    return stream
end

function dataset_insect_7(batch::Int)::EasyStream.BatchStream
    filename = "$(defdir)/real/repository/INSECTS-incremental-abrupt_balanced_norm.arff"

    isfile(filename) || get_usp_data(defdir)

    data = ARFFFiles.load(DataFrame,filename)

    conn = EasyStream.TablesConnector(data)

    stream = EasyStream.BatchStream(conn, batch = batch)

    return stream
end

function dataset_insect_8(batch::Int)::EasyStream.BatchStream
    filename = "$(defdir)/real/repository/INSECTS-incremental-abrupt_imbalanced_norm.arff"

    isfile(filename) || get_usp_data(defdir)

    data = ARFFFiles.load(DataFrame,filename)

    conn = EasyStream.TablesConnector(data)

    stream = EasyStream.BatchStream(conn, batch = batch)

    return stream
end

function dataset_insect_9(batch::Int)::EasyStream.BatchStream
    filename = "$(defdir)/real/repository/INSECTS-incremental-reoccurring_balanced_norm.arff"

    isfile(filename) || get_usp_data(defdir)

    data = ARFFFiles.load(DataFrame,filename)

    conn = EasyStream.TablesConnector(data)

    stream = EasyStream.BatchStream(conn, batch = batch)

    return stream
end

function dataset_insect_10(batch::Int)::EasyStream.BatchStream
    filename = "$(defdir)/real/repository/INSECTS-incremental-reoccurring_imbalanced_norm.arff"

    isfile(filename) || get_usp_data(defdir)

    data = ARFFFiles.load(DataFrame,filename)

    conn = EasyStream.TablesConnector(data)

    stream = EasyStream.BatchStream(conn, batch = batch)

    return stream
end

function dataset_insect_11(batch::Int)::EasyStream.BatchStream
    filename = "$(defdir)/real/repository/INSECTS-out-of-control_norm.arff"

    isfile(filename) || get_usp_data(defdir)

    data = ARFFFiles.load(DataFrame,filename)

    conn = EasyStream.TablesConnector(data)

    stream = EasyStream.BatchStream(conn, batch = batch)

    return stream
end
