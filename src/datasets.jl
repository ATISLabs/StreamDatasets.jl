const defdir = joinpath(dirname(@__FILE__), "..", "datasets")

function get_usp_data(dir)
       mkpath(joinpath(defdir, "real"))
       path = download("http://sites.labic.icmc.usp.br/vsouza/repository/usp-stream-data.zip")
    mv(path, joinpath(defdir, "real/usp-stream-data.zip"))
    run(`7z x datasets/real/usp-stream-data.zip -odatasets/real/`)
end

function DatasetAirlines(batch::Int)::EasyStream.BatchStream
    filename = "$(defdir)/real/repository/airlines.arff"

    isfile(filename) || get_usp_data(defdir)

    data = ARFFFiles.load(DataFrame,filename)

    conn = EasyStream.TablesConnector(data)

    stream = EasyStream.BatchStream(conn, batch = batch)

    return stream
end
